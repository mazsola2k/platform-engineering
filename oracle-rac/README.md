# Oracle RAC Deployment on KubeVirt

Automated provisioning of Oracle Real Application Clusters (RAC) with optional Data Guard and Fast-Start Failover on Kubernetes via KubeVirt.

## Architecture

```
┌─────────────────────────────────────────────────────────────────────┐
│  Kubernetes Cluster (KubeVirt)                                      │
│                                                                     │
│  ┌─────────────┐  ┌─────────────┐  ┌─────────────┐                │
│  │  rac-node1  │  │  rac-node2  │  │ rac-standby │  (optional)    │
│  │  Grid + ASM │  │  Grid + ASM │  │ DG standby  │                │
│  │  RAC DB     │  │  RAC DB     │  │ RMAN dup    │                │
│  │ .10.11      │  │ .10.12      │  │ .10.13      │                │
│  └──────┬──────┘  └──────┬──────┘  └──────┬──────┘                │
│         │                │                │                         │
│  ═══════╧════════════════╧════════════════╧═════════  L2 VXLAN     │
│         br-vm bridge (192.168.10.0/24)                              │
│         Multus NetworkAttachmentDefinition                          │
│                                                                     │
│  Shared ASM Disks (HostDisk):                                       │
│  ├─ asm-data.img  (DATA diskgroup, 20G default)                    │
│  ├─ asm-fra.img   (FRA diskgroup,  10G default)                    │
│  └─ asm-vote.img  (VOTE diskgroup,  2G default)                    │
│                                                                     │
│  ┌─────────────┐                                                    │
│  │ rac-observer│  (optional, FSFO only)                             │
│  │ Instant Cli │                                                    │
│  │ .10.14      │                                                    │
│  └─────────────┘                                                    │
└─────────────────────────────────────────────────────────────────────┘
```

## Supported Topologies

| Topology | Nodes | Data Guard | FSFO | Total VMs | Description |
|----------|-------|------------|------|-----------|-------------|
| **A** | 2 | No | No | 2 | RAC only |
| **B** | 2 | Yes | No | 3 | RAC + standby |
| **C** | 2 | Yes | Yes | 4 | RAC + standby + observer |
| **D** | 0 | Yes | No | 2 | Data Guard only (primary + standby) |
| **E** | 0 | Yes | Yes | 3 | Data Guard + FSFO (no RAC) |
| **F** | 0 | No | No | 1 | Single node (delegates to oracle-controller) |

## Prerequisites

- Kubernetes cluster with KubeVirt installed and `HostDisk` feature gate enabled
- RHEL 9 qcow2 image at the configured `qcow2_image_path`
- Sufficient storage for ASM disks + VM root disks
- Red Hat subscription credentials (for DNF packages)
- HashiCorp Vault (optional, for credential management)
- Ansible with `kubernetes.core` collection

## Quick Start

### Deploy a 2-Node RAC with Data Guard

```bash
ansible-playbook oracle-rac-controller.yaml \
  -e rac_action=install \
  -e rac_nodes=2 \
  -e rac_dataguard=true \
  -e rac_fsfo=false
```

### Check Cluster Status

```bash
ansible-playbook oracle-rac-controller.yaml -e rac_action=status
```

### Generate AWR/ADDM/ASH Reports

```bash
ansible-playbook oracle-rac-controller.yaml -e rac_action=awr
```

### Run Performance Test

```bash
ansible-playbook oracle-rac-controller.yaml \
  -e rac_action=perftest \
  -e perf_duration=300 \
  -e perf_parallel=4
```

### Tear Down

```bash
ansible-playbook oracle-rac-controller.yaml -e rac_action=uninstall
```

## Configuration Reference

### Topology Selection

| Variable | Default | Description |
|----------|---------|-------------|
| `rac_action` | — | `install`, `uninstall`, `status`, `awr`, `perftest` |
| `rac_nodes` | `2` | Number of RAC nodes (0 or 2) |
| `rac_dataguard` | `false` | Enable Data Guard standby |
| `rac_fsfo` | `false` | Enable Fast-Start Failover (requires DG) |

### VM Sizing

| Variable | Default | Description |
|----------|---------|-------------|
| `rac_node_cpu` | `4` | vCPUs per RAC node |
| `rac_node_memory` | `8Gi` | RAM per RAC node |
| `rac_node_disk` | `40Gi` | Root disk per RAC node |
| `rac_standby_cpu` | `4` | Standby vCPUs |
| `rac_standby_memory` | `8Gi` | Standby RAM |
| `rac_standby_disk` | `40Gi` | Standby root disk |
| `rac_observer_cpu` | `1` | Observer vCPUs |
| `rac_observer_memory` | `1Gi` | Observer RAM |
| `rac_observer_disk` | `10Gi` | Observer root disk |

### ASM Storage

| Variable | Default | Description |
|----------|---------|-------------|
| `rac_asm_data_size` | `20G` | DATA diskgroup size |
| `rac_asm_fra_size` | `10G` | FRA (Fast Recovery Area) diskgroup size |
| `rac_asm_vote_size` | `2G` | VOTE diskgroup size |
| `rac_shared_disk_path` | `/var/lib/kubevirt/rac-shared` | Host path for ASM images |

### Network

| Variable | Default | Description |
|----------|---------|-------------|
| `rac_interconnect_subnet` | `192.168.10.0/24` | L2 interconnect subnet |
| `rac_interconnect_bridge` | `br-vm` | Linux bridge name |
| `rac_vxlan_id` | `100` | VXLAN Network Identifier |
| `rac_vxlan_port` | `4789` | VXLAN UDP port |
| `rac_bridge_ip` | `192.168.10.1` | Bridge management IP |
| `rac_node1_priv_ip` | `192.168.10.11` | Node 1 L2 IP |
| `rac_node2_priv_ip` | `192.168.10.12` | Node 2 L2 IP |
| `rac_standby_priv_ip` | `192.168.10.13` | Standby L2 IP |
| `rac_scan_ip` | `192.168.10.100` | SCAN listener IP |

### Oracle Database

| Variable | Default | Description |
|----------|---------|-------------|
| `rac_db_name` | `RACDB` | Global database name |
| `rac_pdb_name` | `RACPDB1` | Pluggable database name |
| `rac_scan_name` | `rac-scan` | SCAN listener name |
| `rac_cluster_name` | `rac-cluster` | Cluster name |
| `rac_oracle_password` | — | SYS/SYSTEM password |
| `rac_vault_secret` | — | Vault path for credentials |

## Installation Sequence

The `install` action executes the following phases in order:

```
1. Preflight Checks         (rac-preflight.yaml)
   └─ Verify KubeVirt, HostDisk feature, qcow2 image, storage, memory

2. Network Setup            (rac-network-install.yaml)
   ├─ Install Multus CNI
   ├─ Create br-vm bridge + VXLAN tunnel (vxlan100)
   ├─ Configure FDB flooding entries
   └─ Create NetworkAttachmentDefinition (rac-interconnect)

3. Shared ASM Disks         (rac-shared-disks.yaml)
   └─ Create raw images: asm-data.img, asm-fra.img, asm-vote.img

4. RAC Node Provisioning    (rac-nodes-install.yaml)
   └─ Per node (rac-node-provision-single.yaml):
      ├─ Create PV/PVC with node affinity
      ├─ Convert qcow2 → raw + resize
      ├─ Cloud-init: users, /etc/hosts, kernel params,
      │   security limits, packages, groups
      └─ Create VirtualMachine CR with Multus L2 network

5. Grid Infrastructure      (rac-grid-install.yaml)
   ├─ SSH key equivalence (grid user, RSA)
   ├─ ASM device configuration + udev rules
   │   (ASM_DATA, ASM_FRA, ASM_VOTE serial mapping)
   ├─ Grid home installation (gridSetup.sh silent mode)
   ├─ root.sh on all nodes
   └─ ACFS module recovery (RHEL 9 workaround)

6. RAC Database             (rac-db-install.yaml)
   ├─ DB software home installation
   ├─ DBCA silent mode:
   │   gdbName=RACDB, storageType=ASM, diskGroup=+DATA
   │   CDB with 1 PDB, 40% node RAM allocation
   └─ Enable archivelog mode (required for DG)

7. Standby Provisioning     (rac-standby-install.yaml)         [if rac_dataguard]
   ├─ Separate ASM images (asm-data-stby.img, asm-fra-stby.img)
   ├─ Standby VM with cloud-init
   ├─ Grid Infrastructure on standby
   └─ RMAN DUPLICATE from primary

8. Data Guard Broker        (rac-dg-broker-install.yaml)       [if rac_dataguard]
   ├─ DG_BROKER_START=TRUE on primary & standby
   ├─ DGMGRL configuration creation
   └─ ENABLE FAST_START FAILOVER                               [if rac_fsfo]

9. FSFO Observer            (rac-observer-install.yaml)        [if rac_fsfo]
   └─ Lightweight VM with Oracle Instant Client
```

## Diagnostics (awr action)

The `awr` action generates Oracle diagnostic reports:

| Report | Tool | Description |
|--------|------|-------------|
| AWR | `DBMS_WORKLOAD_REPOSITORY` | Automatic Workload Repository snapshot comparison |
| AWR Diff | `DBMS_WORKLOAD_REPOSITORY` | Compare two AWR periods |
| ADDM | `DBMS_ADVISOR` | Automatic Database Diagnostic Monitor |
| ASH | `DBMS_WORKLOAD_REPOSITORY` | Active Session History analysis |
| SQL Monitor | `DBMS_SQL_MONITOR` | Real-time SQL execution details |
| SQL Tuning | `DBMS_SQLTUNE` | SQL Tuning Advisor recommendations |
| Health Monitor | `DBMS_HM` | Database health checks |

Parameters:

| Variable | Default | Description |
|----------|---------|-------------|
| `awr_begin_time` | 24h ago | Report start time |
| `awr_end_time` | now | Report end time |
| `awr_begin_snap` | auto | Starting AWR snapshot ID |
| `awr_end_snap` | auto | Ending AWR snapshot ID |

Reports are saved to `./oracle-rac/awr_report_<timestamp>.html`.

## Performance Testing (perftest action)

Runs a synthetic OLTP workload against the RAC cluster:

- Creates a workload schema with `wl_customers` (10K rows), `wl_products` (5K rows), `wl_orders`
- Spawns parallel worker sessions + 1 analytics stream
- Configurable duration and parallelism

| Variable | Default | Description |
|----------|---------|-------------|
| `perf_duration` | `300` | Test duration in seconds |
| `perf_parallel` | `4` | Number of parallel OLTP workers |

## Uninstall Sequence

Reverse order of installation:

```
1. FSFO Observer removal     (rac-observer-uninstall.yaml)
2. Standby removal           (rac-standby-uninstall.yaml)
3. RAC node removal          (rac-nodes-uninstall.yaml)
4. Shared disks cleanup      (rac-shared-disks-uninstall.yaml)
5. Network teardown          (rac-network-uninstall.yaml)
```

Each step deletes VMs, PVCs, PVs, disk images, and associated Kubernetes resources.

## Observability Integration

For monitoring the RAC cluster with OpenTelemetry and Observe, see [otel/README.md](otel/README.md).

```bash
# Deploy OTEL monitoring for the RAC cluster
ansible-playbook otel-controller.yaml \
  -e action=install \
  -e 'component=["observe-dashboards","collector","oracle-rac"]' \
  -e observe_customer=<ID> \
  -e observe_api_token=<TOKEN>
```

## Kubernetes Custom Resources

The deployment can be managed via Kubernetes CRDs for operator-based lifecycle:

- **CRD**: `oracleracs.infra.example.com` (short name: `orac`)
- **CR Example**: See `manifest-controller/oracle-rac-cr.yaml`

```yaml
apiVersion: infra.example.com/v1
kind: OracleRAC
metadata:
  name: oracle-rac-demo
spec:
  rac_action: install
  rac_nodes: 2
  rac_dataguard: true
  rac_fsfo: true
  rac_node_cpu: 4
  rac_node_memory: "8Gi"
  rac_db_name: RACDB
  rac_pdb_name: RACPDB1
```

Status subresource fields: `phase` (Pending/InProgress/Ready/Failed/Terminating), `topology` (A-F), `nodeCount`, `vmNames`.

## File Structure

```
oracle-rac-controller.yaml             # Main orchestrator (install/uninstall/status/awr/perftest)

oracle-rac/
├── rac-preflight.yaml                 # Pre-flight validation
├── rac-network-install.yaml           # L2 VXLAN bridge + Multus
├── rac-network-uninstall.yaml         # Network teardown
├── rac-shared-disks.yaml              # ASM disk image creation
├── rac-shared-disks-uninstall.yaml    # ASM disk cleanup
├── rac-nodes-install.yaml             # Node provisioning loop
├── rac-node-provision-single.yaml     # Single node VM creation
├── rac-node-remove-single.yaml        # Single node removal
├── rac-nodes-uninstall.yaml           # All nodes removal
├── rac-grid-install.yaml              # Grid Infrastructure + ASM
├── rac-db-install.yaml                # DBCA database creation
├── rac-standby-install.yaml           # Standby + RMAN duplicate
├── rac-standby-grid-install.yaml      # Standby Grid Infrastructure
├── rac-standby-uninstall.yaml         # Standby removal
├── rac-dg-broker-install.yaml         # Data Guard Broker + FSFO
├── rac-observer-install.yaml          # FSFO Observer VM
├── rac-observer-uninstall.yaml        # Observer removal
├── rac-status.yaml                    # Comprehensive cluster status
├── rac-diagnostics.yaml               # AWR/ADDM/ASH reports
├── rac-report-awr-ash-addm.yaml       # Report generation helpers
├── rac-performance-test.yaml          # Synthetic OLTP workload
└── rac-perf-worker.sh                 # Worker script for perf test
```
