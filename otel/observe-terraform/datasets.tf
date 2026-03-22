# =============================================================================
# Datasets — Oracle RAC Metric Views
# =============================================================================
# Each dataset filters / transforms the base OTEL metric stream using OPAL.
# Field names assume the standard Observe OTEL metric processing pipeline:
#   metric  — metric name  (string)
#   value   — numeric value (float64)
#   tags.*  — Prometheus label dimensions
# Metric metadata lives in FIELDS (name, value, type), while Prometheus
# labels live in EXTRA.attributes (instance, db_name, host, etc.).
# =============================================================================

# ---------------------------------------------------------------------------
# 1. All Oracle Metrics  (base filtered dataset)
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_all" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / All Metrics"
  description = "All oracle_* performance metrics collected from Oracle RAC nodes via OTEL Prometheus receiver and node_exporter textfile collector."
  icon_url    = "database"
  freshness   = "1m"

  inputs = {
    "metrics" = observe_datastream.otel.dataset
  }

  # Extract metric name, numeric value, and Prometheus labels from raw OTEL observations.
  # The Prometheus receiver stores metric metadata in FIELDS, Prometheus labels
  # in EXTRA.attributes, and scrape target info in EXTRA.resource.attributes.
  # Coalesce across all three sources so fields resolve regardless of which
  # labels the collector script or scrape config injected.
  stage {
    alias    = "extract"
    pipeline = <<-EOT
      make_col
        metric:string(FIELDS.name),
        value:float64(FIELDS.value),
        instance:coalesce(string(EXTRA.attributes.instance), string(EXTRA.attributes.exported_instance), string(EXTRA.resource.attributes["service.instance.id"])),
        db_name:coalesce(string(EXTRA.attributes.db_name), string(EXTRA.attributes.exported_db_name)),
        host:coalesce(string(EXTRA.attributes.host), string(EXTRA.attributes.exported_host), string(EXTRA.resource.attributes["server.address"]), string(EXTRA.resource.attributes["service.instance.id"])),
        cluster:string(EXTRA.attributes.cluster),
        name:string(EXTRA.attributes.name),
        wait_class:string(EXTRA.attributes.wait_class),
        event:string(EXTRA.attributes.event),
        sql_id:string(EXTRA.attributes.sql_id),
        sql_text:string(EXTRA.attributes.sql_text),
        tablespace:string(EXTRA.attributes.tablespace),
        role:string(EXTRA.attributes.role),
        session_type:string(EXTRA.attributes.type),
        status:string(EXTRA.attributes.status),
        pool:string(EXTRA.attributes.pool),
        lmode:string(EXTRA.attributes.lmode),
        request:string(EXTRA.attributes.request),
        component:string(EXTRA.attributes.component),
        source:coalesce(string(EXTRA.attributes.job), string(EXTRA.resource.attributes["service.name"]))
    EOT
  }

  stage {
    alias    = "oracle_all"
    pipeline = <<-EOT
      filter not is_null(metric)
      filter metric ~ /^oracle_/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 2. Instance Health
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_instance" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Instance Health"
  description = "Instance up/down, uptime, metadata, efficiency ratios, process & session limits."
  icon_url    = "activity-monitor"
  freshness   = "1m"

  inputs = {
    "oracle" = observe_dataset.oracle_rac_all.oid
  }

  stage {
    alias    = "instance_health"
    pipeline = <<-EOT
      filter metric ~ /^oracle_(up|instance_|buffer_cache_hit|library_cache_hit|dict_cache_hit|latch_hit|process_|session_count|session_limit)/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 3. System Statistics  (v$sysstat counters)
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_sysstat" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / System Statistics"
  description = "Cumulative Oracle sysstat counters — physical IO, parses, executes, redo, GC blocks, enqueues."
  icon_url    = "combo-chart"
  freshness   = "1m"

  inputs = {
    "oracle" = observe_dataset.oracle_rac_all.oid
  }

  stage {
    alias    = "sysstat"
    pipeline = <<-EOT
      filter metric = "oracle_sysstat"
    EOT
  }
}

# ---------------------------------------------------------------------------
# 4. Wait Events & Classes
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_waits" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Wait Events"
  description = "Wait-class summaries, top individual wait events, average wait times."
  icon_url    = "hourglass"
  freshness   = "1m"

  inputs = {
    "oracle" = observe_dataset.oracle_rac_all.oid
  }

  stage {
    alias    = "waits"
    pipeline = <<-EOT
      filter metric ~ /^oracle_wait_/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 5. Top SQL Performance
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_top_sql" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Top SQL"
  description = "Top SQL statements ranked by elapsed time, CPU, buffer gets, disk reads, executions."
  icon_url    = "sql"
  freshness   = "1m"

  inputs = {
    "oracle" = observe_dataset.oracle_rac_all.oid
  }

  stage {
    alias    = "top_sql"
    pipeline = <<-EOT
      filter metric ~ /^oracle_(top_sql_|sql_text)/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 6. Active Session History (ASH)
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_ash" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Active Sessions (ASH)"
  description = "Active Session History — session activity breakdown by wait class and event."
  icon_url    = "user-group-man-man"
  freshness   = "1m"

  inputs = {
    "oracle" = observe_dataset.oracle_rac_all.oid
  }

  stage {
    alias    = "ash"
    pipeline = <<-EOT
      filter metric ~ /^oracle_(ash_|sessions_|blocked_sessions)/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 7. Storage & I/O
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_io" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Storage & IO"
  description = "Tablespace I/O, redo log activity, SGA/PGA memory statistics."
  icon_url    = "hdd"
  freshness   = "1m"

  inputs = {
    "oracle" = observe_dataset.oracle_rac_all.oid
  }

  stage {
    alias    = "storage_io"
    pipeline = <<-EOT
      filter metric ~ /^oracle_(tablespace_io_|redo_|sga_|pga_)/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 8. Data Guard / Standby
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_dataguard" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Data Guard"
  description = "Data Guard transport & apply lag metrics for the standby database."
  icon_url    = "data-protection"
  freshness   = "1m"

  inputs = {
    "oracle" = observe_dataset.oracle_rac_all.oid
  }

  stage {
    alias    = "dataguard"
    pipeline = <<-EOT
      filter metric ~ /^oracle_dataguard_/
    EOT
  }
}

# =============================================================================
# Log Datasets — Oracle RAC Logs shipped via OTEL filelog receiver
# =============================================================================

# ---------------------------------------------------------------------------
# 9. All Oracle Logs (base log dataset)
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_logs" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / All Logs"
  description = "All Oracle RAC log entries shipped via the OTEL filelog receiver — alert logs, listener logs, audit trails."
  icon_url    = "document"
  freshness   = "1m"

  inputs = {
    "logs" = observe_datastream.otel.dataset
  }

  stage {
    alias    = "extract_logs"
    pipeline = <<-EOT
      make_col
        log_body:string(FIELDS.body),
        log_source:string(EXTRA.log_source),
        log_file:string(EXTRA.log_file_name),
        severity:string(FIELDS.severity_text),
        instance:string(EXTRA.instance),
        role:string(EXTRA.role)
    EOT
  }

  stage {
    alias    = "filter_logs"
    pipeline = <<-EOT
      filter not is_null(log_body)
    EOT
  }
}

# ---------------------------------------------------------------------------
# 10. Alert Log
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_alert_log" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Alert Log"
  description = "Oracle database alert log entries — ORA errors, instance events, recovery actions."
  icon_url    = "warning"
  freshness   = "1m"

  inputs = {
    "logs" = observe_dataset.oracle_rac_logs.oid
  }

  stage {
    alias    = "alert_log"
    pipeline = <<-EOT
      filter log_source = "alert" or log_file ~ /alert/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 11. Listener Log
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_listener_log" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Listener Log"
  description = "Oracle Net Listener log entries — connection events, TNS errors, service registration."
  icon_url    = "network"
  freshness   = "1m"

  inputs = {
    "logs" = observe_dataset.oracle_rac_logs.oid
  }

  stage {
    alias    = "listener_log"
    pipeline = <<-EOT
      filter log_source = "listener" or log_file ~ /listener/
    EOT
  }
}

# ---------------------------------------------------------------------------
# 12. Audit Trail
# ---------------------------------------------------------------------------
resource "observe_dataset" "oracle_rac_audit" {
  workspace   = data.observe_workspace.default.oid
  name        = "${var.name_prefix} / Audit Trail"
  description = "Oracle audit trail entries — login/logout, DDL, privilege use."
  icon_url    = "lock"
  freshness   = "1m"

  inputs = {
    "logs" = observe_dataset.oracle_rac_logs.oid
  }

  stage {
    alias    = "audit"
    pipeline = <<-EOT
      filter log_source = "audit" or log_file ~ /audit/
    EOT
  }
}
