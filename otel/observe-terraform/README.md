# Observe Terraform — Oracle RAC Datasets & Dashboards

Terraform Infrastructure as Code for deploying Oracle RAC observability resources to the [Observe](https://www.observeinc.com/) platform.

## Overview

This module creates a complete monitoring stack in Observe:

- **1 Datastream** with OTEL ingest endpoint and bearer token
- **1 Base dataset** with OPAL field extraction from raw OTEL payloads
- **8 Metric datasets** filtered by Oracle metric prefix
- **4 Log datasets** for alert, listener, and audit logs
- **3 Dashboards** with 30+ widgets (single-value, bar, timeseries, table)

## Prerequisites

- Terraform >= 1.0
- Observe account with API token (Settings → API Tokens)
- Observe workspace (default: `Default`)
- OTEL Collector already sending data (see parent [README](../README.md))

## Quick Start

```bash
# Copy and edit the variables file
cp terraform.tfvars.example terraform.tfvars
vi terraform.tfvars

# Deploy
terraform init
terraform plan
terraform apply
```

Or use the Ansible wrapper (recommended — auto-wires ingest credentials):

```bash
ansible-playbook ../otel-controller.yaml \
  -e action=install -e component=observe-dashboards \
  -e observe_customer=<ID> \
  -e observe_api_token=<TOKEN>
```

## Configuration

### terraform.tfvars

```hcl
observe_customer       = "124727713894"        # Observe customer ID
observe_api_token      = "your-api-token"       # API bearer token
observe_domain         = "observeinc.com"       # Platform domain
workspace_name         = "Default"              # Target workspace
otel_datastream_name   = "oracle-rac-otel"      # Datastream name
name_prefix            = "Oracle RAC"           # Dataset/dashboard prefix
```

### Variables Reference

| Variable | Type | Default | Description |
|----------|------|---------|-------------|
| `observe_customer` | string | — | Numeric customer ID from Observe |
| `observe_api_token` | string | — | API token (sensitive) |
| `observe_domain` | string | `observeinc.com` | Platform domain |
| `workspace_name` | string | `Default` | Target workspace |
| `otel_datastream_name` | string | `oracle-rac-otel` | Datastream name |
| `name_prefix` | string | `Oracle RAC` | Prefix for all resource names |

## Resource Structure

### Datastream & Ingest

```
observe_datastream.oracle_rac
  └─ Token: <datastream_id>:<secret>
  └─ Endpoint: https://<customer>.collect.<domain>/v1/otel
```

The ingest endpoint and token are exported as Terraform outputs and automatically passed back to Ansible for OTEL Collector configuration.

### Dataset Hierarchy

```
Datastream (oracle-rac-otel)
└─ Base Dataset: "Oracle RAC - Base Metrics"
   │  OPAL extraction: metric, value, instance, host, db_name, 15+ labels
   │
   ├─ oracle_rac_all          → All metrics (unfiltered)
   ├─ oracle_rac_instance     → oracle_instance_*, oracle_process_*,
   │                             oracle_long_running_*, oracle_redo_*,
   │                             oracle_dataguard_*, oracle_blocked_*
   ├─ oracle_rac_sysstat      → oracle_sysstat
   ├─ oracle_rac_waits        → oracle_wait_*, oracle_enqueue_*
   ├─ oracle_rac_top_sql      → oracle_sql_*
   ├─ oracle_rac_ash          → oracle_ash_*
   ├─ oracle_rac_io           → oracle_tablespace_*, oracle_cache_*,
   │                             oracle_sga_*, oracle_pga_*
   ├─ oracle_rac_dataguard    → oracle_dataguard_*
   │
   ├─ oracle_rac_logs         → All log entries
   ├─ oracle_rac_alert_log    → body contains "alert"
   ├─ oracle_rac_listener_log → body contains "listener"
   └─ oracle_rac_audit_log    → body contains "audit"
```

### OPAL Base Extraction

The base dataset transforms raw OTEL JSON into structured columns:

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
  source:string(EXTRA.attributes.source)
```

**Key extraction notes:**
- `instance` uses 3-tier coalesce (attributes → resource.attributes → service.instance.id)
- `host` uses 4-tier coalesce
- `session_type` maps from `EXTRA.attributes.type` (not `session_type`)
- `value` reads from `gauge.dataPoints[0].asDouble`

### Dashboards

#### 1. Oracle RAC Overview

| Widget Type | Metrics |
|-------------|---------|
| Single Value (7) | Instance Up, Uptime (hours), Process Count, Long Running SQL, Redo Switches/hr, DG Lag (sec), Blocked Sessions |
| Bar Chart (4) | Sessions by Type, SGA Memory by Pool, Tablespace Usage %, ASH by Wait Class |
| Timeseries (5) | Cache Hit Ratio, PGA Statistics, System Statistics, Wait Class Waits, Top Wait Events |

#### 2. Oracle RAC SQL Performance

| Widget Type | Metrics |
|-------------|---------|
| Timeseries (7) | SQL Elapsed Time, SQL CPU Time, SQL Buffer Gets, SQL Disk Reads, SQL Executions, SQL Rows Processed, SQL Avg Latency |
| Table (1) | SQL Text Reference (sql_id → sql_text lookup) |

All SQL timeseries are grouped by `sql_id` for per-statement drill-down.

#### 3. Oracle RAC Wait Events & I/O

| Widget Type | Metrics |
|-------------|---------|
| Timeseries (5) | Tablespace Read Ops, Tablespace Write Ops, Enqueue Locks, Wait Class Time, Avg Wait by Event |

## Outputs

| Output | Description |
|--------|-------------|
| `workspace_oid` | Observe workspace OID |
| `datastream_oid` | Datastream resource OID |
| `datastream_dataset_oid` | Datastream backing dataset OID |
| `ingest_endpoint` | OTEL ingest URL (`https://<customer>.collect.<domain>/v1/otel`) |
| `ingest_token` | Bearer token for OTEL exporter (`<id>:<secret>`, sensitive) |
| `dashboard_overview_oid` | Overview dashboard OID |
| `dashboard_sql_oid` | SQL Performance dashboard OID |
| `dashboard_waits_io_oid` | Wait Events & I/O dashboard OID |
| `dataset_*_oid` | Individual dataset OIDs |

## Operations

### Destroy All Resources

```bash
# Via Ansible
ansible-playbook ../otel-controller.yaml \
  -e action=uninstall -e component=observe-dashboards

# Or directly
terraform destroy
```

### View Current State

```bash
terraform output -json
```

### Re-deploy After Manual Dashboard Deletion

If dashboards are deleted in the Observe UI, Terraform will detect the drift and recreate them:

```bash
terraform apply
```

## File Structure

```
observe-terraform/
├── provider.tf                 # Observe provider (observeinc/observe ~> 0.14)
├── variables.tf                # Input variables
├── data.tf                     # Workspace lookup, datastream + token creation
├── datasets.tf                 # Base extraction + 8 metric + 4 log datasets
├── dashboards.tf               # 3 dashboards with 30+ widget definitions
├── outputs.tf                  # Ingest endpoint, token, all resource OIDs
└── terraform.tfvars.example    # Sample configuration
```
