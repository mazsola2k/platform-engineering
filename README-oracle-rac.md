# Oracle RAC on KubeVirt

Automated deployment of Oracle Real Application Clusters (RAC) with Data Guard and Fast-Start Failover on KubeVirt virtual machines.

## Prerequisites

### Downloads (required before install)

Download the following Oracle AI Database 26ai installers from:
**https://www.oracle.com/database/technologies/oracle26ai-linux-downloads.html**

| File | Size | Description |
|------|------|-------------|
| `LINUX.X64_2326100_grid_home.zip` | 1.1 GB | Grid Infrastructure (ASM + Clusterware) — **required for RAC** |
| `LINUX.X64_2326100_db_home.zip` | 2.4 GB | Oracle Database Enterprise Edition |

Direct download links (requires Oracle account):
- https://download.oracle.com/otn/linux/oracle26ai/2326100/LINUX.X64_2326100_grid_home.zip
- https://download.oracle.com/otn/linux/oracle26ai/2326100/LINUX.X64_2326100_db_home.zip

Place both ZIP files in the **project root directory** (`kubernetes-installer/`).

### Other prerequisites

- RHEL 9.x qcow2 image: `rhel-9.6-x86_64-kvm.qcow2` in the project root
- KubeVirt installed on the Kubernetes cluster (with HostDisk feature gate enabled)
- Python `kubernetes` pip package installed on the Ansible controller
- Sufficient resources: ~8 GB RAM per RAC node, ~40 GB disk per node

## Topologies

| Topology | rac_nodes | rac_dataguard | rac_fsfo | VMs | Description |
|----------|-----------|---------------|----------|-----|-------------|
| A | 2 | false | false | 2 | RAC only |
| B | 2 | true | false | 3 | RAC + Data Guard (standby) |
| C | 2 | true | true | 4 | RAC + Data Guard + Fast-Start Failover |
| D | 0 | true | false | 2 | Data Guard only (no RAC) |
| E | 0 | true | true | 3 | Data Guard + FSFO (no RAC) |
| F | 0 | false | false | 1 | Single node (use `oracle-controller.yaml`) |

## Usage

```bash
# Install (default: Topology C — RAC + DG + FSFO)
ansible-playbook oracle-rac-controller.yaml -e rac_action=install

# Install RAC only (Topology A)
ansible-playbook oracle-rac-controller.yaml -e rac_action=install -e rac_dataguard=false

# Check status
ansible-playbook oracle-rac-controller.yaml -e rac_action=status

# Uninstall (destroys all VMs and data)
ansible-playbook oracle-rac-controller.yaml -e rac_action=uninstall
```

## Configuration

Override defaults with `-e` extra vars:

| Variable | Default | Description |
|----------|---------|-------------|
| `rac_action` | `status` | Action: `install`, `uninstall`, `status` |
| `rac_nodes` | `2` | Number of RAC nodes (0 = no RAC) |
| `rac_dataguard` | `true` | Enable Data Guard standby |
| `rac_fsfo` | `true` | Enable Fast-Start Failover observer |
| `rac_node_cpu` | `4` | vCPUs per RAC node |
| `rac_node_memory` | `8Gi` | RAM per RAC node |
| `rac_node_disk` | `40Gi` | System disk per RAC node |
| `rac_db_name` | `RACDB` | Database name |
| `rac_oracle_password` | `Oracle123` | Password for root, oracle, grid users |

## Install phases

1. **Pre-flight** — Validates KubeVirt, enables HostDisk feature gate, checks qcow2 image
2. **Shared disks** — Creates ASM disk images (DATA, FRA, VOTE) on the host
3. **Node provisioning** — Creates PV/PVC, converts qcow2→raw, cloud-init, deploys VMs
4. **Grid Infrastructure** — Copies Grid ZIP to VM, installs ASM + Clusterware
5. **Database creation** — Copies DB ZIP to VM, installs Oracle software, runs DBCA
6. **Data Guard** — Provisions standby VM, configures duplicate database
7. **FSFO** — Provisions observer VM, configures Fast-Start Failover

## File structure

```
oracle-rac-controller.yaml          # Top-level controller
oracle-rac/
  rac-preflight.yaml                # Pre-flight checks
  rac-shared-disks.yaml             # ASM shared disk creation
  rac-nodes-install.yaml            # VM provisioning loop
  rac-node-provision-single.yaml    # Per-node VM provisioning
  rac-grid-install.yaml             # Grid Infrastructure + ASM
  rac-db-install.yaml               # Database creation
  rac-standby-install.yaml          # Data Guard standby
  rac-observer-install.yaml         # FSFO observer
  rac-dg-broker-install.yaml        # Data Guard Broker config
  rac-status.yaml                   # Status checks
  rac-uninstall.yaml                # VM teardown
```
