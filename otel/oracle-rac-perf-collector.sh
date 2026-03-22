#!/bin/bash
# =============================================================================
# Oracle RAC Performance Metrics Collector for Prometheus / OTEL
# =============================================================================
# Outputs Prometheus exposition format to node_exporter textfile collector.
# Covers AWR-equivalent metric categories for SRE workload analysis:
#
#   1.  Instance info & uptime
#   2.  System statistics  (v$sysstat)             — AWR "Instance Activity"
#   3.  Wait events & classes (v$system_event)     — AWR "Top Timed Events"
#   4.  Top SQL by elapsed/CPU/IO (v$sqlarea)      — AWR "SQL Statistics"
#   5.  SQL text mapping (v$sqlarea)               — SQL identification
#   6.  Active Session History (v$active_session_history) — AWR "ASH"
#   7.  Session breakdown (v$session)              — Active/inactive/blocking
#   8.  Lock & blocking analysis (v$lock,v$session)— AWR "Enqueue Activity"
#   9.  Tablespace I/O (v$filestat)                — AWR "Tablespace IO Stats"
#  10.  SGA / PGA memory (v$sgastat, v$pgastat)    — AWR "Memory Statistics"
#  11.  Redo log activity (v$log, v$log_history)   — AWR "Redo Log Stats"
#  12.  Data Guard lag (v$dataguard_stats)          — Standby lag metrics
#  13.  Instance efficiency ratios                  — AWR "Instance Efficiency"
#  14.  Long-running SQL & process limits           — Operational alerts
#
# Deployed by: otel/otel-oracle-rac-install.yaml
# Schedule:    cron every 60 seconds (oracle user)
# =============================================================================

set -uo pipefail

ORACLE_SID="${ORACLE_SID:-RACDB}"
ORACLE_HOME="${ORACLE_HOME:-/u01/app/oracle/product/26ai/dbhome_1}"
export ORACLE_SID ORACLE_HOME
export PATH="${ORACLE_HOME}/bin:${PATH}"
export LD_LIBRARY_PATH="${ORACLE_HOME}/lib:${LD_LIBRARY_PATH:-}"

TEXTFILE_DIR="/var/lib/node_exporter/textfile_collector"
INSTANCE_NAME=$(hostname -s)
TEMP_FILE="${TEXTFILE_DIR}/.oracle_perf.prom.$$"

mkdir -p "${TEXTFILE_DIR}"
trap "rm -f '${TEMP_FILE}'" EXIT

# -----------------------------------------------------------
# Connectivity check — exit gracefully if Oracle unavailable
# -----------------------------------------------------------
if ! echo "SELECT 1 FROM dual;" | sqlplus -S / as sysdba 2>/dev/null | grep -q '1'; then
    cat > "${TEXTFILE_DIR}/oracle_perf.prom" <<EOF
# Oracle instance not accessible on ${INSTANCE_NAME} at $(date -u +%Y-%m-%dT%H:%M:%SZ)
oracle_up{instance="${INSTANCE_NAME}"} 0
EOF
    exit 0
fi

# -----------------------------------------------------------
# Collect all metrics in a single sqlplus session.
# WHENEVER SQLERROR CONTINUE ensures individual section
# failures (e.g. standby in MOUNT mode) don't abort the run.
# Only lines matching Prometheus format are kept (grep filter).
# -----------------------------------------------------------
sqlplus -S / as sysdba 2>/dev/null <<'EOSQL' | grep -E '^(oracle_|# )' > "${TEMP_FILE}"
SET HEADING OFF FEEDBACK OFF PAGESIZE 0 LINESIZE 4000 TRIMSPOOL ON TAB OFF
SET ECHO OFF VERIFY OFF TERMOUT ON SERVEROUT OFF LONG 200 NUMWIDTH 20
WHENEVER SQLERROR CONTINUE

-- =================================================================
-- 1. INSTANCE INFO
-- =================================================================
SELECT '# HELP oracle_up Oracle instance is up and accessible' FROM dual;
SELECT '# TYPE oracle_up gauge' FROM dual;
SELECT 'oracle_up{instance="' || i.instance_name || '"} 1' FROM v$instance i;

SELECT '# HELP oracle_instance_info Oracle instance metadata (value=1)' FROM dual;
SELECT '# TYPE oracle_instance_info gauge' FROM dual;
SELECT 'oracle_instance_info{instance_name="' || i.instance_name ||
       '",host_name="' || i.host_name ||
       '",version="' || i.version_full ||
       '",database_role="' || d.database_role ||
       '",open_mode="' || d.open_mode ||
       '",protection_mode="' || d.protection_mode ||
       '",db_unique_name="' || d.db_unique_name ||
       '"} 1'
FROM v$instance i, v$database d;

SELECT '# HELP oracle_instance_uptime_seconds Instance uptime in seconds' FROM dual;
SELECT '# TYPE oracle_instance_uptime_seconds gauge' FROM dual;
SELECT 'oracle_instance_uptime_seconds ' ||
       ROUND((SYSDATE - startup_time) * 86400, 0)
FROM v$instance;

-- =================================================================
-- 2. KEY SYSTEM STATISTICS  (v$sysstat)
-- AWR equivalent: "Instance Activity Stats"
-- =================================================================
SELECT '# HELP oracle_sysstat Oracle system statistic cumulative value' FROM dual;
SELECT '# TYPE oracle_sysstat counter' FROM dual;
SELECT 'oracle_sysstat{name="' || REPLACE(name, '"', '') || '"} ' || value
FROM v$sysstat
WHERE name IN (
    'physical reads',
    'physical writes',
    'physical read total IO requests',
    'physical write total IO requests',
    'physical read total bytes',
    'physical write total bytes',
    'db block gets',
    'consistent gets',
    'user commits',
    'user rollbacks',
    'user calls',
    'recursive calls',
    'parse count (total)',
    'parse count (hard)',
    'parse count (failures)',
    'execute count',
    'sorts (memory)',
    'sorts (disk)',
    'table scans (long tables)',
    'table scans (short tables)',
    'table fetch by rowid',
    'redo size',
    'redo writes',
    'redo log space requests',
    'session logical reads',
    'db block changes',
    'consistent changes',
    'CPU used by this session',
    'DB time',
    'sql execute elapsed time',
    'bytes sent via SQL*Net to client',
    'bytes received via SQL*Net from client',
    'SQL*Net roundtrips to/from client',
    'enqueue waits',
    'enqueue timeouts',
    'enqueue requests',
    'enqueue releases',
    'gc cr blocks received',
    'gc current blocks received',
    'gc cr blocks served',
    'gc current blocks served',
    'global enqueue gets sync',
    'global enqueue gets async'
);

-- =================================================================
-- 3. WAIT EVENTS  (v$system_event)
-- AWR equivalent: "Top 5 Timed Foreground Events"
-- =================================================================
-- 3a. Wait-class summary
SELECT '# HELP oracle_wait_class_time_seconds Total time waited per wait class' FROM dual;
SELECT '# TYPE oracle_wait_class_time_seconds counter' FROM dual;
SELECT 'oracle_wait_class_time_seconds{wait_class="' || wait_class || '"} ' ||
       ROUND(SUM(time_waited_micro)/1000000, 3)
FROM v$system_event
WHERE wait_class != 'Idle'
GROUP BY wait_class;

SELECT '# HELP oracle_wait_class_total_waits Total waits per wait class' FROM dual;
SELECT '# TYPE oracle_wait_class_total_waits counter' FROM dual;
SELECT 'oracle_wait_class_total_waits{wait_class="' || wait_class || '"} ' || SUM(total_waits)
FROM v$system_event
WHERE wait_class != 'Idle'
GROUP BY wait_class;

-- 3b. Top 30 individual events
SELECT '# HELP oracle_wait_event_time_seconds Cumulative time waited for event' FROM dual;
SELECT '# TYPE oracle_wait_event_time_seconds counter' FROM dual;
SELECT 'oracle_wait_event_time_seconds{wait_class="' || wait_class ||
       '",event="' || REPLACE(REPLACE(event, '"', ''''), '\', '/') || '"} ' ||
       ROUND(time_waited_micro/1000000, 3)
FROM (SELECT wait_class, event, time_waited_micro FROM v$system_event
      WHERE wait_class != 'Idle' ORDER BY time_waited_micro DESC)
WHERE ROWNUM <= 30;

SELECT '# HELP oracle_wait_event_total_waits Cumulative wait count for event' FROM dual;
SELECT '# TYPE oracle_wait_event_total_waits counter' FROM dual;
SELECT 'oracle_wait_event_total_waits{wait_class="' || wait_class ||
       '",event="' || REPLACE(REPLACE(event, '"', ''''), '\', '/') || '"} ' || total_waits
FROM (SELECT wait_class, event, total_waits, time_waited_micro FROM v$system_event
      WHERE wait_class != 'Idle' ORDER BY time_waited_micro DESC)
WHERE ROWNUM <= 30;

SELECT '# HELP oracle_wait_event_avg_wait_ms Average wait time per event in milliseconds' FROM dual;
SELECT '# TYPE oracle_wait_event_avg_wait_ms gauge' FROM dual;
SELECT 'oracle_wait_event_avg_wait_ms{wait_class="' || wait_class ||
       '",event="' || REPLACE(REPLACE(event, '"', ''''), '\', '/') || '"} ' ||
       ROUND(CASE WHEN total_waits > 0 THEN time_waited_micro/total_waits/1000 ELSE 0 END, 3)
FROM (SELECT wait_class, event, total_waits, time_waited_micro FROM v$system_event
      WHERE wait_class != 'Idle' ORDER BY time_waited_micro DESC)
WHERE ROWNUM <= 30;

-- =================================================================
-- 4. TOP SQL  (v$sqlarea — one row per sql_id)
-- AWR equivalent: "SQL ordered by Elapsed Time / CPU / Gets / Reads"
-- =================================================================
-- 4a. By elapsed time
SELECT '# HELP oracle_top_sql_elapsed_seconds Total elapsed time for SQL' FROM dual;
SELECT '# TYPE oracle_top_sql_elapsed_seconds gauge' FROM dual;
SELECT 'oracle_top_sql_elapsed_seconds{sql_id="' || sql_id || '"} ' ||
       ROUND(elapsed_time/1000000, 3)
FROM (SELECT sql_id, elapsed_time FROM v$sqlarea ORDER BY elapsed_time DESC)
WHERE ROWNUM <= 25;

-- 4b. By CPU time
SELECT '# HELP oracle_top_sql_cpu_seconds Total CPU time for SQL' FROM dual;
SELECT '# TYPE oracle_top_sql_cpu_seconds gauge' FROM dual;
SELECT 'oracle_top_sql_cpu_seconds{sql_id="' || sql_id || '"} ' ||
       ROUND(cpu_time/1000000, 3)
FROM (SELECT sql_id, cpu_time FROM v$sqlarea ORDER BY cpu_time DESC)
WHERE ROWNUM <= 25;

-- 4c. By buffer gets (logical I/O)
SELECT '# HELP oracle_top_sql_buffer_gets Total buffer gets (logical IO) for SQL' FROM dual;
SELECT '# TYPE oracle_top_sql_buffer_gets gauge' FROM dual;
SELECT 'oracle_top_sql_buffer_gets{sql_id="' || sql_id || '"} ' || buffer_gets
FROM (SELECT sql_id, buffer_gets FROM v$sqlarea ORDER BY buffer_gets DESC)
WHERE ROWNUM <= 25;

-- 4d. By disk reads (physical I/O)
SELECT '# HELP oracle_top_sql_disk_reads Total disk reads (physical IO) for SQL' FROM dual;
SELECT '# TYPE oracle_top_sql_disk_reads gauge' FROM dual;
SELECT 'oracle_top_sql_disk_reads{sql_id="' || sql_id || '"} ' || disk_reads
FROM (SELECT sql_id, disk_reads FROM v$sqlarea ORDER BY disk_reads DESC)
WHERE ROWNUM <= 25;

-- 4e. Executions (for top-elapsed SQLs)
SELECT '# HELP oracle_top_sql_executions Total executions for SQL' FROM dual;
SELECT '# TYPE oracle_top_sql_executions gauge' FROM dual;
SELECT 'oracle_top_sql_executions{sql_id="' || sql_id || '"} ' || executions
FROM (SELECT sql_id, executions, elapsed_time FROM v$sqlarea ORDER BY elapsed_time DESC)
WHERE ROWNUM <= 25;

-- 4f. Rows processed (for top-elapsed SQLs)
SELECT '# HELP oracle_top_sql_rows_processed Total rows processed by SQL' FROM dual;
SELECT '# TYPE oracle_top_sql_rows_processed gauge' FROM dual;
SELECT 'oracle_top_sql_rows_processed{sql_id="' || sql_id || '"} ' || rows_processed
FROM (SELECT sql_id, rows_processed, elapsed_time FROM v$sqlarea ORDER BY elapsed_time DESC)
WHERE ROWNUM <= 25;

-- 4g. Elapsed per execution (avg latency)
SELECT '# HELP oracle_top_sql_elapsed_per_exec_ms Average elapsed time per execution in ms' FROM dual;
SELECT '# TYPE oracle_top_sql_elapsed_per_exec_ms gauge' FROM dual;
SELECT 'oracle_top_sql_elapsed_per_exec_ms{sql_id="' || sql_id || '"} ' ||
       ROUND(CASE WHEN executions > 0 THEN elapsed_time/executions/1000 ELSE 0 END, 3)
FROM (SELECT sql_id, elapsed_time, executions FROM v$sqlarea ORDER BY elapsed_time DESC)
WHERE ROWNUM <= 25;

-- =================================================================
-- 5. SQL TEXT MAPPING  (info metric, value=1)
-- Allows SREs to correlate sql_id to actual query text
-- =================================================================
SELECT '# HELP oracle_sql_text_info Maps sql_id to truncated SQL text (value=1)' FROM dual;
SELECT '# TYPE oracle_sql_text_info gauge' FROM dual;
SELECT 'oracle_sql_text_info{sql_id="' || sql_id ||
       '",sql_text="' ||
       REPLACE(REPLACE(REPLACE(REPLACE(
           SUBSTR(sql_text, 1, 120),
           '"', ''''), CHR(10), ' '), CHR(13), ' '), '\', '/') ||
       '"} 1'
FROM (SELECT sql_id, sql_text FROM v$sqlarea ORDER BY elapsed_time DESC)
WHERE ROWNUM <= 50;

-- =================================================================
-- 6. ACTIVE SESSION HISTORY  (v$active_session_history)
-- AWR equivalent: "Top SQL with Top Events", "Activity Over Time"
-- =================================================================
-- 6a. Active sessions by wait class (last 5 min)
SELECT '# HELP oracle_ash_active_sessions ASH sample count by wait class (last 5 min)' FROM dual;
SELECT '# TYPE oracle_ash_active_sessions gauge' FROM dual;
SELECT 'oracle_ash_active_sessions{wait_class="' || NVL(wait_class, 'On CPU') || '"} ' || cnt
FROM (
    SELECT NVL(wait_class, 'On CPU') as wait_class, COUNT(*) as cnt
    FROM v$active_session_history
    WHERE sample_time > SYSTIMESTAMP - INTERVAL '5' MINUTE
      AND session_type = 'FOREGROUND'
    GROUP BY wait_class
);

-- 6b. Top SQL from ASH (last 5 min)
SELECT '# HELP oracle_ash_top_sql_samples ASH samples per sql_id and wait class (last 5 min)' FROM dual;
SELECT '# TYPE oracle_ash_top_sql_samples gauge' FROM dual;
SELECT 'oracle_ash_top_sql_samples{sql_id="' || NVL(sql_id, 'NULL') ||
       '",wait_class="' || NVL(wait_class, 'On CPU') || '"} ' || cnt
FROM (
    SELECT sql_id, NVL(wait_class, 'On CPU') as wait_class, COUNT(*) as cnt
    FROM v$active_session_history
    WHERE sample_time > SYSTIMESTAMP - INTERVAL '5' MINUTE
      AND session_type = 'FOREGROUND'
      AND sql_id IS NOT NULL
    GROUP BY sql_id, wait_class
    ORDER BY cnt DESC
)
WHERE ROWNUM <= 20;

-- 6c. ASH top events (last 5 min)
SELECT '# HELP oracle_ash_top_event_samples ASH samples per event (last 5 min)' FROM dual;
SELECT '# TYPE oracle_ash_top_event_samples gauge' FROM dual;
SELECT 'oracle_ash_top_event_samples{event="' ||
       REPLACE(REPLACE(NVL(event, 'On CPU'), '"', ''''), '\', '/') ||
       '",wait_class="' || NVL(wait_class, 'On CPU') || '"} ' || cnt
FROM (
    SELECT event, NVL(wait_class, 'On CPU') as wait_class, COUNT(*) as cnt
    FROM v$active_session_history
    WHERE sample_time > SYSTIMESTAMP - INTERVAL '5' MINUTE
      AND session_type = 'FOREGROUND'
    GROUP BY event, wait_class
    ORDER BY cnt DESC
)
WHERE ROWNUM <= 20;

-- =================================================================
-- 7. SESSION ACTIVITY  (v$session)
-- =================================================================
SELECT '# HELP oracle_session_count Current sessions by status, type, wait class' FROM dual;
SELECT '# TYPE oracle_session_count gauge' FROM dual;
SELECT 'oracle_session_count{status="' || status ||
       '",type="' || type ||
       '",wait_class="' || NVL(wait_class, 'None') || '"} ' || COUNT(*)
FROM v$session
GROUP BY status, type, wait_class;

SELECT '# HELP oracle_active_user_sessions Current active user session count' FROM dual;
SELECT '# TYPE oracle_active_user_sessions gauge' FROM dual;
SELECT 'oracle_active_user_sessions ' || COUNT(*)
FROM v$session
WHERE status = 'ACTIVE' AND type = 'USER';

SELECT '# HELP oracle_session_by_program Sessions grouped by program' FROM dual;
SELECT '# TYPE oracle_session_by_program gauge' FROM dual;
SELECT 'oracle_session_by_program{program="' ||
       REPLACE(REPLACE(NVL(program, 'unknown'), '"', ''''), '\', '/') ||
       '",status="' || status || '"} ' || cnt
FROM (
    SELECT program, status, COUNT(*) as cnt
    FROM v$session
    WHERE type = 'USER'
    GROUP BY program, status
    ORDER BY cnt DESC
)
WHERE ROWNUM <= 20;

-- =================================================================
-- 8. LOCK & BLOCKING ANALYSIS
-- AWR equivalent: "Enqueue Activity", blocking chains
-- =================================================================
SELECT '# HELP oracle_blocked_sessions_total Currently blocked sessions' FROM dual;
SELECT '# TYPE oracle_blocked_sessions_total gauge' FROM dual;
SELECT 'oracle_blocked_sessions_total ' || COUNT(*)
FROM v$session
WHERE blocking_session IS NOT NULL;

SELECT '# HELP oracle_blocking_session_info Blocked session detail (value=seconds_in_wait)' FROM dual;
SELECT '# TYPE oracle_blocking_session_info gauge' FROM dual;
SELECT 'oracle_blocking_session_info{blocked_sid="' || s.sid ||
       '",blocking_sid="' || s.blocking_session ||
       '",sql_id="' || NVL(s.sql_id, 'none') ||
       '",wait_class="' || NVL(s.wait_class, 'none') ||
       '",event="' || REPLACE(REPLACE(NVL(s.event, 'none'), '"', ''''), '\', '/') ||
       '"} ' || s.seconds_in_wait
FROM v$session s
WHERE s.blocking_session IS NOT NULL
  AND ROWNUM <= 20;

SELECT '# HELP oracle_enqueue_lock_count Current lock counts by type and mode' FROM dual;
SELECT '# TYPE oracle_enqueue_lock_count gauge' FROM dual;
SELECT 'oracle_enqueue_lock_count{type="' || type ||
       '",lmode="' || lmode ||
       '",request="' || request || '"} ' || cnt
FROM (
    SELECT type, lmode, request, COUNT(*) as cnt
    FROM v$lock
    WHERE type NOT IN ('AE', 'TO')
    GROUP BY type, lmode, request
    HAVING COUNT(*) > 1
    ORDER BY cnt DESC
)
WHERE ROWNUM <= 30;

SELECT '# HELP oracle_lock_wait_count Sessions currently waiting for locks' FROM dual;
SELECT '# TYPE oracle_lock_wait_count gauge' FROM dual;
SELECT 'oracle_lock_wait_count ' || COUNT(*)
FROM v$lock
WHERE request > 0;

-- =================================================================
-- 9. TABLESPACE I/O  (v$filestat)
-- AWR equivalent: "Tablespace IO Stats"
-- =================================================================
SELECT '# HELP oracle_tablespace_physical_reads Physical reads per tablespace' FROM dual;
SELECT '# TYPE oracle_tablespace_physical_reads counter' FROM dual;
SELECT 'oracle_tablespace_physical_reads{tablespace="' || ts.name || '"} ' || SUM(fs.phyrds)
FROM v$filestat fs
JOIN v$datafile df ON fs.file# = df.file#
JOIN v$tablespace ts ON df.ts# = ts.ts#
GROUP BY ts.name;

SELECT '# HELP oracle_tablespace_physical_writes Physical writes per tablespace' FROM dual;
SELECT '# TYPE oracle_tablespace_physical_writes counter' FROM dual;
SELECT 'oracle_tablespace_physical_writes{tablespace="' || ts.name || '"} ' || SUM(fs.phywrts)
FROM v$filestat fs
JOIN v$datafile df ON fs.file# = df.file#
JOIN v$tablespace ts ON df.ts# = ts.ts#
GROUP BY ts.name;

SELECT '# HELP oracle_tablespace_read_time_ms Total read time per tablespace in ms' FROM dual;
SELECT '# TYPE oracle_tablespace_read_time_ms counter' FROM dual;
SELECT 'oracle_tablespace_read_time_ms{tablespace="' || ts.name || '"} ' || SUM(fs.readtim) * 10
FROM v$filestat fs
JOIN v$datafile df ON fs.file# = df.file#
JOIN v$tablespace ts ON df.ts# = ts.ts#
GROUP BY ts.name;

SELECT '# HELP oracle_tablespace_write_time_ms Total write time per tablespace in ms' FROM dual;
SELECT '# TYPE oracle_tablespace_write_time_ms counter' FROM dual;
SELECT 'oracle_tablespace_write_time_ms{tablespace="' || ts.name || '"} ' || SUM(fs.writetim) * 10
FROM v$filestat fs
JOIN v$datafile df ON fs.file# = df.file#
JOIN v$tablespace ts ON df.ts# = ts.ts#
GROUP BY ts.name;

SELECT '# HELP oracle_tablespace_avg_read_ms Average read latency per tablespace in ms' FROM dual;
SELECT '# TYPE oracle_tablespace_avg_read_ms gauge' FROM dual;
SELECT 'oracle_tablespace_avg_read_ms{tablespace="' || ts.name || '"} ' ||
       ROUND(CASE WHEN SUM(fs.phyrds) > 0 THEN SUM(fs.readtim)*10/SUM(fs.phyrds) ELSE 0 END, 3)
FROM v$filestat fs
JOIN v$datafile df ON fs.file# = df.file#
JOIN v$tablespace ts ON df.ts# = ts.ts#
GROUP BY ts.name;

-- =================================================================
-- 10. SGA / PGA MEMORY
-- AWR equivalent: "Memory Statistics", "SGA breakdown"
-- =================================================================
SELECT '# HELP oracle_sga_bytes SGA pool component sizes (bytes)' FROM dual;
SELECT '# TYPE oracle_sga_bytes gauge' FROM dual;
SELECT 'oracle_sga_bytes{pool="' || NVL(pool, 'fixed') ||
       '",name="' || REPLACE(name, '"', '') || '"} ' || bytes
FROM v$sgastat
WHERE bytes > 1048576
ORDER BY bytes DESC;

SELECT '# HELP oracle_sga_target_bytes SGA target size in bytes' FROM dual;
SELECT '# TYPE oracle_sga_target_bytes gauge' FROM dual;
SELECT 'oracle_sga_target_bytes ' || value FROM v$parameter WHERE name = 'sga_target';

SELECT '# HELP oracle_pga_target_bytes PGA aggregate target in bytes' FROM dual;
SELECT '# TYPE oracle_pga_target_bytes gauge' FROM dual;
SELECT 'oracle_pga_target_bytes ' || value FROM v$parameter WHERE name = 'pga_aggregate_target';

SELECT '# HELP oracle_pga_stat PGA statistics' FROM dual;
SELECT '# TYPE oracle_pga_stat gauge' FROM dual;
SELECT 'oracle_pga_stat{name="' || REPLACE(name, '"', '') || '"} ' || value
FROM v$pgastat;

-- =================================================================
-- 11. REDO LOG ACTIVITY
-- AWR equivalent: "Redo Log Stats"
-- =================================================================
SELECT '# HELP oracle_redo_log_switches_per_hour Redo log switches in the last hour' FROM dual;
SELECT '# TYPE oracle_redo_log_switches_per_hour gauge' FROM dual;
SELECT 'oracle_redo_log_switches_per_hour ' || COUNT(*)
FROM v$log_history
WHERE first_time > SYSDATE - 1/24;

SELECT '# HELP oracle_redo_log_size_bytes Redo log group sizes' FROM dual;
SELECT '# TYPE oracle_redo_log_size_bytes gauge' FROM dual;
SELECT 'oracle_redo_log_size_bytes{group_number="' || group# ||
       '",status="' || status || '"} ' || bytes
FROM v$log;

SELECT '# HELP oracle_redo_log_switches_last_24h Redo log switches per hour over last 24h' FROM dual;
SELECT '# TYPE oracle_redo_log_switches_last_24h gauge' FROM dual;
SELECT 'oracle_redo_log_switches_last_24h{hour="' ||
       TO_CHAR(first_time, 'YYYY-MM-DD HH24') || '"} ' || COUNT(*)
FROM v$log_history
WHERE first_time > SYSDATE - 1
GROUP BY TO_CHAR(first_time, 'YYYY-MM-DD HH24')
ORDER BY TO_CHAR(first_time, 'YYYY-MM-DD HH24');

-- =================================================================
-- 12. DATA GUARD  (standby only — silently skipped on primary)
-- =================================================================
SELECT '# HELP oracle_dataguard_lag_seconds Data Guard lag in seconds' FROM dual;
SELECT '# TYPE oracle_dataguard_lag_seconds gauge' FROM dual;
SELECT 'oracle_dataguard_lag_seconds{metric="' || REPLACE(name, ' ', '_') || '"} ' ||
       ROUND(
         EXTRACT(DAY FROM TO_DSINTERVAL(REGEXP_REPLACE(value, '^\+', ''))) * 86400 +
         EXTRACT(HOUR FROM TO_DSINTERVAL(REGEXP_REPLACE(value, '^\+', ''))) * 3600 +
         EXTRACT(MINUTE FROM TO_DSINTERVAL(REGEXP_REPLACE(value, '^\+', ''))) * 60 +
         EXTRACT(SECOND FROM TO_DSINTERVAL(REGEXP_REPLACE(value, '^\+', ''))), 0)
FROM v$dataguard_stats
WHERE name IN ('transport lag', 'apply lag', 'apply finish time')
  AND value IS NOT NULL;

-- =================================================================
-- 13. INSTANCE EFFICIENCY RATIOS
-- AWR equivalent: "Instance Efficiency Percentages"
-- =================================================================
SELECT '# HELP oracle_buffer_cache_hit_ratio Buffer cache hit ratio pct' FROM dual;
SELECT '# TYPE oracle_buffer_cache_hit_ratio gauge' FROM dual;
SELECT 'oracle_buffer_cache_hit_ratio ' ||
       ROUND(100 * (1 - (phys.value / GREATEST(dbget.value + consist.value, 1))), 2)
FROM
    (SELECT value FROM v$sysstat WHERE name = 'physical reads') phys,
    (SELECT value FROM v$sysstat WHERE name = 'db block gets') dbget,
    (SELECT value FROM v$sysstat WHERE name = 'consistent gets') consist;

SELECT '# HELP oracle_library_cache_hit_ratio Library cache hit ratio pct' FROM dual;
SELECT '# TYPE oracle_library_cache_hit_ratio gauge' FROM dual;
SELECT 'oracle_library_cache_hit_ratio ' ||
       ROUND(SUM(pins - reloads) / GREATEST(SUM(pins), 1) * 100, 2)
FROM v$librarycache;

SELECT '# HELP oracle_dict_cache_hit_ratio Dictionary cache hit ratio pct' FROM dual;
SELECT '# TYPE oracle_dict_cache_hit_ratio gauge' FROM dual;
SELECT 'oracle_dict_cache_hit_ratio ' ||
       ROUND((1 - SUM(getmisses) / GREATEST(SUM(gets), 1)) * 100, 2)
FROM v$rowcache;

SELECT '# HELP oracle_soft_parse_ratio Soft parse ratio pct (higher is better)' FROM dual;
SELECT '# TYPE oracle_soft_parse_ratio gauge' FROM dual;
SELECT 'oracle_soft_parse_ratio ' ||
       ROUND(CASE WHEN pt.value > 0 THEN (1 - ph.value / pt.value) * 100 ELSE 100 END, 2)
FROM
    (SELECT value FROM v$sysstat WHERE name = 'parse count (total)') pt,
    (SELECT value FROM v$sysstat WHERE name = 'parse count (hard)') ph;

SELECT '# HELP oracle_execute_to_parse_pct Execute-to-parse ratio pct' FROM dual;
SELECT '# TYPE oracle_execute_to_parse_pct gauge' FROM dual;
SELECT 'oracle_execute_to_parse_pct ' ||
       ROUND(CASE WHEN ec.value > 0 THEN (1 - pt.value / ec.value) * 100 ELSE 100 END, 2)
FROM
    (SELECT value FROM v$sysstat WHERE name = 'parse count (total)') pt,
    (SELECT value FROM v$sysstat WHERE name = 'execute count') ec;

SELECT '# HELP oracle_parse_cpu_to_elapsed_pct Parse CPU to parse elapsed pct' FROM dual;
SELECT '# TYPE oracle_parse_cpu_to_elapsed_pct gauge' FROM dual;
SELECT 'oracle_parse_cpu_to_elapsed_pct ' ||
       ROUND(CASE WHEN pe.value > 0 THEN pc.value / pe.value * 100 ELSE 100 END, 2)
FROM
    (SELECT value FROM v$sysstat WHERE name = 'parse time cpu') pc,
    (SELECT value FROM v$sysstat WHERE name = 'parse time elapsed') pe;

-- =================================================================
-- 14. LONG-RUNNING SQL & OPERATIONAL METRICS
-- =================================================================
SELECT '# HELP oracle_long_running_sql Active SQL running > 5 seconds (value=elapsed_sec)' FROM dual;
SELECT '# TYPE oracle_long_running_sql gauge' FROM dual;
SELECT 'oracle_long_running_sql{sid="' || s.sid ||
       '",sql_id="' || NVL(s.sql_id, 'none') ||
       '",username="' || NVL(s.username, 'SYS') ||
       '",program="' || REPLACE(REPLACE(NVL(SUBSTR(s.program,1,60), 'unknown'), '"', ''''), '\', '/') ||
       '",event="' || REPLACE(REPLACE(NVL(s.event, 'none'), '"', ''''), '\', '/') ||
       '"} ' || s.last_call_et
FROM v$session s
WHERE s.status = 'ACTIVE'
  AND s.type = 'USER'
  AND s.last_call_et > 5
  AND ROWNUM <= 20;

SELECT '# HELP oracle_process_count Current Oracle process count' FROM dual;
SELECT '# TYPE oracle_process_count gauge' FROM dual;
SELECT 'oracle_process_count ' || COUNT(*) FROM v$process;

SELECT '# HELP oracle_process_limit Oracle maximum process limit' FROM dual;
SELECT '# TYPE oracle_process_limit gauge' FROM dual;
SELECT 'oracle_process_limit ' || value FROM v$parameter WHERE name = 'processes';

SELECT '# HELP oracle_tablespace_used_pct Tablespace usage percentage' FROM dual;
SELECT '# TYPE oracle_tablespace_used_pct gauge' FROM dual;
SELECT 'oracle_tablespace_used_pct{tablespace="' || tablespace_name || '"} ' ||
       ROUND(used_percent, 2)
FROM dba_tablespace_usage_metrics;

-- =================================================================
-- COLLECTION TIMESTAMP
-- =================================================================
SELECT '# HELP oracle_metrics_collection_timestamp_seconds Unix epoch of last collection' FROM dual;
SELECT '# TYPE oracle_metrics_collection_timestamp_seconds gauge' FROM dual;
SELECT 'oracle_metrics_collection_timestamp_seconds ' ||
       ROUND((CAST(SYS_EXTRACT_UTC(SYSTIMESTAMP) AS DATE) - DATE '1970-01-01') * 86400)
FROM dual;

EXIT;
EOSQL

# -----------------------------------------------------------
# Atomic file swap — only update if we got valid data
# -----------------------------------------------------------
if [ -s "${TEMP_FILE}" ] && grep -q '^oracle_up' "${TEMP_FILE}"; then
    mv "${TEMP_FILE}" "${TEXTFILE_DIR}/oracle_perf.prom"
else
    rm -f "${TEMP_FILE}"
fi
