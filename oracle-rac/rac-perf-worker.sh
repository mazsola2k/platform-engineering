#!/bin/bash
# Oracle RAC OLTP + Analytics workload worker
# Deployed by rac-performance-test.yaml
#
# Usage: rac-perf-worker.sh <duration_secs> <worker_id> <type:oltp|analytics> <pdb_service> [listener_addr]

export ORACLE_SID="${ORACLE_SID:-RACDB}"
export ORACLE_HOME="${ORACLE_HOME:-/u01/app/oracle/product/26ai/dbhome_1}"
export PATH="${ORACLE_HOME}/bin:${PATH}"

DURATION=${1:-300}
WORKER_ID=${2:-1}
WORKER_TYPE=${3:-oltp}
PDB_SERVICE="${4:-RACPDB1}"
LISTENER_ADDR="${5:-localhost}"

if [ "$WORKER_TYPE" = "oltp" ]; then
  LIMIT_CS=$((DURATION * 100))
  sqlplus -S "workload/WorkLoad123@${LISTENER_ADDR}:1521/${PDB_SERVICE}" <<EOSQL
SET ECHO OFF FEEDBACK OFF SERVEROUT ON
DECLARE
  v_cust_id   NUMBER;
  v_prod_id   NUMBER;
  v_order_id  NUMBER;
  v_qty       NUMBER;
  v_price     NUMBER;
  v_iter      NUMBER := 0;
  v_start     NUMBER := DBMS_UTILITY.GET_TIME;
BEGIN
  LOOP
    v_iter := v_iter + 1;
    EXIT WHEN (DBMS_UTILITY.GET_TIME - v_start) > ${LIMIT_CS};

    SELECT cust_id INTO v_cust_id FROM (
      SELECT cust_id FROM wl_customers
      WHERE region = CASE MOD(v_iter, 5) WHEN 0 THEN 'EMEA' WHEN 1 THEN 'APAC' WHEN 2 THEN 'AMER' WHEN 3 THEN 'LATAM' ELSE 'GLOBAL' END
      ORDER BY DBMS_RANDOM.VALUE
    ) WHERE ROWNUM = 1;

    SELECT prod_id, price INTO v_prod_id, v_price FROM (
      SELECT prod_id, price FROM wl_products
      WHERE category = CASE MOD(v_iter, 4) WHEN 0 THEN 'Electronics' WHEN 1 THEN 'Software' WHEN 2 THEN 'Services' ELSE 'Hardware' END
      ORDER BY DBMS_RANDOM.VALUE
    ) WHERE ROWNUM = 1;

    v_qty := TRUNC(DBMS_RANDOM.VALUE(1, 20));
    SELECT wl_seq.NEXTVAL INTO v_order_id FROM dual;

    INSERT INTO wl_orders (order_id, cust_id, prod_id, qty, total, status, order_dt)
    VALUES (v_order_id, v_cust_id, v_prod_id, v_qty, v_qty * v_price,
            CASE MOD(v_iter, 3) WHEN 0 THEN 'PENDING' WHEN 1 THEN 'SHIPPED' ELSE 'DELIVERED' END,
            SYSDATE);

    UPDATE wl_customers SET balance = balance - (v_qty * v_price * 0.01) WHERE cust_id = v_cust_id;

    INSERT INTO wl_audit_log (log_id, action, detail, ts)
    VALUES (v_order_id, 'ORDER', 'W' || ${WORKER_ID} || ' ord=' || v_order_id, SYSTIMESTAMP);

    IF MOD(v_iter, 10) = 0 THEN COMMIT; END IF;

    -- Full-scan analytics every 25 iterations
    IF MOD(v_iter, 25) = 0 THEN
      FOR r IN (SELECT /*+ FULL(o) */ status, COUNT(*) cnt, SUM(total) rev FROM wl_orders o GROUP BY status) LOOP NULL; END LOOP;
    END IF;

    -- Multi-table join every 50 iterations
    IF MOD(v_iter, 50) = 0 THEN
      FOR r IN (
        SELECT c.region, p.category, COUNT(*) cnt, SUM(o.total) rev
        FROM wl_orders o JOIN wl_customers c ON o.cust_id = c.cust_id JOIN wl_products p ON o.prod_id = p.prod_id
        GROUP BY c.region, p.category ORDER BY rev DESC
      ) LOOP NULL; END LOOP;
    END IF;

    -- Correlated subquery every 100 iterations
    IF MOD(v_iter, 100) = 0 THEN
      FOR r IN (
        SELECT c.name, c.region,
               (SELECT COUNT(*) FROM wl_orders o WHERE o.cust_id = c.cust_id) ocnt,
               (SELECT NVL(SUM(total),0) FROM wl_orders o WHERE o.cust_id = c.cust_id) otot
        FROM wl_customers c WHERE c.balance > 10000 ORDER BY c.balance DESC FETCH FIRST 50 ROWS ONLY
      ) LOOP NULL; END LOOP;
    END IF;

    DBMS_SESSION.SLEEP(0.05);
  END LOOP;
  COMMIT;
  DBMS_OUTPUT.PUT_LINE('Worker ' || ${WORKER_ID} || '(oltp): ' || v_iter || ' iterations in ' || ROUND((DBMS_UTILITY.GET_TIME - v_start)/100,1) || 's');
END;
/
EXIT;
EOSQL

elif [ "$WORKER_TYPE" = "analytics" ]; then
  END_TIME=$(($(date +%s) + DURATION))
  ITER=0
  while [ $(date +%s) -lt $END_TIME ]; do
    ITER=$((ITER + 1))
    sqlplus -S "workload/WorkLoad123@${LISTENER_ADDR}:1521/${PDB_SERVICE}" <<'EOSQL'
SET ECHO OFF FEEDBACK OFF PAGESIZE 0

SELECT /*+ MONITOR FULL(o) FULL(c) USE_HASH(c p) */
       c.region, p.category, TRUNC(o.order_dt, 'HH24') hr,
       COUNT(DISTINCT o.cust_id) uniq, COUNT(*) orders, SUM(o.total) rev
FROM wl_orders o JOIN wl_customers c ON o.cust_id = c.cust_id JOIN wl_products p ON o.prod_id = p.prod_id
GROUP BY c.region, p.category, TRUNC(o.order_dt, 'HH24') ORDER BY rev DESC;

SELECT cust_id, SUM(total) rev, COUNT(*) cnt FROM wl_orders GROUP BY cust_id ORDER BY rev DESC FETCH FIRST 50 ROWS ONLY;

SELECT p.name, p.category, NVL(SUM(o.qty),0) qty, NVL(SUM(o.total),0) rev
FROM wl_products p LEFT JOIN wl_orders o ON p.prod_id = o.prod_id
GROUP BY p.name, p.category ORDER BY rev DESC FETCH FIRST 100 ROWS ONLY;

EXIT;
EOSQL
    sleep 8
  done
  echo "Analytics worker: ${ITER} query rounds in ${DURATION}s"
fi
