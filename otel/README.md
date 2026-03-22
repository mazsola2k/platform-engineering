# OTEL Observability Stack — Oracle RAC + Observe Integration

End-to-end observability pipeline for Oracle RAC clusters using OpenTelemetry, Prometheus, and Observe.

## Architecture

```
┌──────────────────────────────────────────────────────────────────────┐
│  Oracle RAC Nodes (rac-node1, rac-node2, rac-standby)              │
│                                                                      │
│  ┌──────────────────────┐   ┌──────────────────────────────────┐    │
│  │  oracle-rac-perf-    │   │  node_exporter (v1.8.2, :9100)  │    │
│  │  collector.sh (cron) │──▶│  textfile_collector directory    │    │
│  │  14 metric categories│   └──────────────┬───────────────────┘    │
│  └──────────────────────┘                   │                        │
│                                             │  Prometheus scrape     │
│  ┌──────────────────────┐                   │                        │
│  │  Oracle alert.log    │                   │                        │
│  │  Listener log        │                   │                        │
│  │  Audit trail         │                   │                        │
│  └──────────┬───────────┘                   │                        │
└─────────────┼───────────────────────────────┼────────────────────────┘
              │ filelog receiver               │ prometheus receiver
              ▼                               ▼
┌──────────────────────────────────────────────────────────────────────┐
│  OpenTelemetry Collector (K8s Deployment)                            │
│  Image: otel/opentelemetry-collector-contrib:0.133.0                 │
│                                                                      │
│  Receivers:                                                          │
│  ├─ oracledb/rac-<node>   → Oracle DB metrics via SQL (port 1521)  │
│  ├─ prometheus/rac-<node>  → node_exporter + custom metrics (:9100) │
│  └─ filelog/rac-<node>     → alert log, listener log, audit trail   │
│                                                                      │
│  Pipeline: receivers → batch processor → otlphttp exporter          │
│                                                                      │
│  Ports: 4317 (gRPC), 4318 (HTTP)                                    │
└──────────────────────────────┬───────────────────────────────────────┘
                               │  OTLP/HTTP
                               ▼
┌──────────────────────────────────────────────────────────────────────┐
│  Observe Platform                                                    │
│  Ingest: https://<customer>.collect.observeinc.com/v1/otel           │
│                                                                      │
│  Datastream → Base Dataset (OPAL extraction)                         │
│  ├─ 8 Metric Datasets (instance, sysstat, waits, sql, ash, io, dg) │
│  ├─ 4 Log Datasets (all logs, alert, listener, audit)               │
│  └─ 3 Dashboards (Overview, SQL Performance, Wait Events & I/O)     │
└──────────────────────────────────────────────────────────────────────┘
```

## Components

| Component | File | Purpose |
|-----------|------|---------|
| Controller | `../otel-controller.yaml` | Top-level orchestrator for all OTEL components |
| Collector | `otel-collector-install.yaml` | Deploys OTEL Collector as K8s Deployment + Service + ConfigMap |
| Oracle RAC | `otel-oracle-rac-install.yaml` | Configures RAC-specific receivers, deploys node_exporter + collector script |
| Oracle Single | `otel-oracle-install.yaml` | Single-instance Oracle DB receiver configuration |
| Metrics Script | `oracle-rac-perf-collector.sh` | Shell script collecting 14 metric categories via sqlplus |
| Observe Dashboards | `otel-observe-dashboards.yaml` | Terraform lifecycle management (init/apply/destroy) |
| Status | `otel-status.yaml` | Health check for OTEL collector pods |
| Uninstall | `otel-uninstall.yaml` | Removes collector Deployment, Service, ConfigMap |
| Terraform IaC | `observe-terraform/` | Observe datasets, dashboards, datastream definitions |

## Quick Start

### Prerequisites

- Kubernetes cluster with KubeVirt
- Oracle RAC cluster deployed (see `oracle-rac/` playbooks)
- HashiCorp Vault with Oracle DB credentials
- Observe account (customer ID + API token)
- Ansible with `kubernetes.core` collection

### Deploy the Full Stack

```bash
# Install everything: Observe dashboards → OTEL Collector → Oracle RAC receivers
ansible-playbook otel-controller.yaml \
  -e action=install \
  -e 'component=["observe-dashboards","collector","oracle-rac"]' \
  -e observe_customer=<CUSTOMER_ID> \
  -e observe_api_token=<API_TOKEN> \
  -e observe_domain=observeinc.com \
  -e observe_workspace=Default
```

### Install Individual Components

```bash
# 1. Deploy Observe datasets & dashboards (creates ingest credentials)
ansible-playbook otel-controller.yaml \
  -e action=install -e component=observe-dashboards

# 2. Deploy the OTEL Collector
ansible-playbook otel-controller.yaml \
  -e action=install -e component=collector

# 3. Wire Oracle RAC receivers into the collector
ansible-playbook otel-controller.yaml \
  -e action=install -e component=oracle-rac
```

### Check Status

```bash
ansible-playbook otel-controller.yaml -e action=status -e component=collector
```

### Uninstall

```bash
ansible-playbook otel-controller.yaml \
  -e action=uninstall \
  -e 'component=["oracle-rac","collector","observe-dashboards"]'
```

## Data Pipeline Details

### 1. Prometheus Metrics Collection

The `oracle-rac-perf-collector.sh` script runs every minute via cron on each RAC node. It connects to Oracle via sqlplus and exports 14 metric categories in Prometheus exposition format:

| # | Metric Category | Source View | Example Metric |
|---|----------------|-------------|----------------|
| 1 | Instance info & uptime | `v$instance` | `oracle_instance_uptime_seconds` |
| 2 | System statistics | `v$sysstat` | `oracle_sysstat` |
| 3 | Wait events & classes | `v$system_event` | `oracle_wait_class_time_waited_seconds` |
| 4 | Top SQL by elapsed/CPU/IO | `v$sqlarea` | `oracle_sql_elapsed_time_seconds` |
| 5 | SQL text mapping | `v$sqlarea` | `oracle_sql_text_info` |
| 6 | Active Session History | `v$active_session_history` | `oracle_ash_active_sessions` |
| 7 | Session breakdown | `v$session` | `oracle_session_count` |
| 8 | Lock & blocking analysis | `v$lock` | `oracle_enqueue_lock_count` |
| 9 | Tablespace I/O | `v$filestat` | `oracle_tablespace_read_ops` |
| 10 | SGA/PGA memory | `v$sgastat`, `v$pgastat` | `oracle_sga_bytes`, `oracle_pga_bytes` |
| 11 | Redo log activity | `v$log`, `v$log_history` | `oracle_redo_switches_per_hour` |
| 12 | Data Guard lag | `v$dataguard_stats` | `oracle_dataguard_lag_seconds` |
| 13 | Instance efficiency | Computed ratios | `oracle_cache_hit_ratio` |
| 14 | Long-running SQL & process limits | `v$session`, `v$process` | `oracle_long_running_sql_count` |

Output file: `/var/lib/node_exporter/textfile_collector/oracle_perf.prom`

### 2. Log Shipping

The filelog receiver tails Oracle logs directly from RAC nodes:

| Log | Path Pattern | Content |
|-----|-------------|---------|
| Alert log | `$ORACLE_BASE/diag/rdbms/*/*/trace/alert_*.log` | ORA errors, instance events |
| Listener log | `$ORACLE_BASE/diag/tnslsnr/*/listener/trace/listener.log` | Connection events |
| Audit trail | `$ORACLE_BASE/admin/*/adump/*.aud` | SQL audit records |

### 3. OTEL Collector Configuration

The collector is deployed as a Kubernetes Deployment with a merged configuration from all enabled components. Per RAC node, three receivers are created:

```yaml
receivers:
  oracledb/rac-rac-node1:
    endpoint: 192.168.10.11:1521
    service: RACDB
    username: ${RAC_OTEL_DB_USER}
    password: ${RAC_OTEL_DB_PASS}
  prometheus/rac-rac-node1:
    config:
      scrape_configs:
        - job_name: oracle-rac-rac-node1
          static_configs:
            - targets: ["192.168.10.11:9100"]
          honor_labels: true
  filelog/rac-rac-node1:
    include:
      - /path/to/alert_*.log
      - /path/to/listener.log

service:
  pipelines:
    metrics/oracle-rac:
      receivers: [oracledb/rac-rac-node1, prometheus/rac-rac-node1, ...]
      processors: [batch]
      exporters: [otlphttp/oracle-rac]
    logs/oracle-rac:
      receivers: [filelog/rac-rac-node1, ...]
      processors: [batch]
      exporters: [otlphttp/oracle-rac]
```

### 4. Observe Terraform IaC

The `observe-terraform/` directory contains the Infrastructure as Code for the Observe platform. See [observe-terraform/README.md](observe-terraform/README.md) for details.

**Resources created:**

- **1 Datastream** — `oracle-rac-otel` (OTEL ingest endpoint)
- **1 Base Dataset** — OPAL extraction of metric name, value, instance, host, db_name, and 15+ label fields
- **8 Metric Datasets** — filtered by metric prefix (instance, sysstat, waits, sql, ash, io, dataguard, all)
- **4 Log Datasets** — all logs, alert log, listener log, audit log
- **3 Dashboards:**
  - **Oracle RAC Overview** — single-value health cards, session/SGA/tablespace bars, cache/PGA/sysstat timeseries
  - **Oracle RAC SQL Performance** — top SQL timeseries (elapsed, CPU, buffer gets, disk reads, executions, rows, latency), SQL text reference table
  - **Oracle RAC Wait Events & I/O** — wait class breakdown, top wait events, tablespace I/O, enqueue locks, Data Guard lag

### 5. OPAL Extraction Pipeline

The base dataset extraction transforms raw OTEL metrics into structured fields:

```opal
make_col
  metric:string(FIELDS.name),
  value:float64(FIELDS.gauge.dataPoints[0].asDouble),
  instance:coalesce(
    string(EXTRA.attributes.instance),
    string(EXTRA.resource.attributes.instance),
    string(EXTRA.resource.attributes."service.instance.id")
  ),
  db_name:string(EXTRA.attributes.db_name),
  host:coalesce(
    string(EXTRA.attributes.host),
    string(EXTRA.resource.attributes.host),
    string(EXTRA.resource.attributes."host.name"),
    string(EXTRA.resource.attributes."net.host.name")
  ),
  session_type:string(EXTRA.attributes.type),
  sql_id:string(EXTRA.attributes.sql_id),
  sql_text:string(EXTRA.attributes.sql_text),
  wait_class:string(EXTRA.attributes.wait_class),
  event:string(EXTRA.attributes.event),
  tablespace:string(EXTRA.attributes.tablespace),
  ...
```

## Supported Platforms

The OTEL controller supports multiple target platforms beyond Oracle RAC:

| Component | Flag | Description |
|-----------|------|-------------|
| `collector` | Always required | Base OTEL Collector deployment |
| `oracle-rac` | Oracle RAC cluster | Multi-node RAC with DG/FSFO support |
| `oracle` | Single Oracle DB | Oracle 23ai Free on KubeVirt VM |
| `vault` | HashiCorp Vault | Vault telemetry + audit logs |
| `redhat` | Red Hat VMs | System metrics from RHEL VMs |
| `windows` | Windows VMs | Windows performance counters |
| `mssql` | SQL Server | MSSQL instance metrics |
| `observe-dashboards` | Observe IaC | Terraform datasets + dashboards |

## Configuration Reference

### Key Variables (otel-controller.yaml)

| Variable | Default | Description |
|----------|---------|-------------|
| `action` | — | `install`, `uninstall`, or `status` |
| `component` | — | List of components to manage |
| `observe_customer` | — | Observe customer ID |
| `observe_api_token` | — | Observe API bearer token |
| `observe_domain` | `observeinc.com` | Observe platform domain |
| `observe_workspace` | `Default` | Observe workspace name |
| `observe_datastream_name` | `oracle-rac-otel` | Datastream name in Observe |
| `observe_name_prefix` | `Oracle RAC` | Prefix for datasets/dashboards |
| `rac_otel_db_user` | — | Oracle DB user for OTEL receiver |
| `rac_otel_db_pass` | — | Oracle DB password for OTEL receiver |
| `otel_collector_image` | `otel/opentelemetry-collector-contrib:0.133.0` | Collector container image |

### Environment Variables

The collector pod receives credentials via environment variables, resolved from Vault or Ansible vars:

- `RAC_OTEL_DB_USER` / `RAC_OTEL_DB_PASS` — Oracle DB credentials per receiver
- `RAC_OTEL_TOKEN` — OTEL exporter bearer token (Observe ingest token)

## Directory Structure

```
otel/
├── README.md                          # This file
├── oracle-rac-perf-collector.sh       # Prometheus metrics script (14 categories)
├── otel-collector-install.yaml        # K8s Deployment + Service + ConfigMap
├── otel-oracle-rac-install.yaml       # RAC receiver wiring + node_exporter setup
├── otel-oracle-install.yaml           # Single-instance Oracle receiver
├── otel-observe-dashboards.yaml       # Terraform lifecycle (init/apply/destroy)
├── otel-status.yaml                   # Collector health check
├── otel-uninstall.yaml                # Collector resource cleanup
├── otel-vault-install.yaml            # Vault telemetry receivers
├── otel-redhat-install.yaml           # Red Hat VM receivers
├── otel-redhat-install-loop.yaml      # Multi-VM Red Hat loop
├── otel-mssql-install.yaml            # MSSQL receivers
├── otel-windows-install.yaml          # Windows VM receivers
└── observe-terraform/                 # Observe IaC (see sub-README)
    ├── README.md
    ├── provider.tf
    ├── variables.tf
    ├── data.tf
    ├── datasets.tf
    ├── dashboards.tf
    ├── outputs.tf
    └── terraform.tfvars.example
```
