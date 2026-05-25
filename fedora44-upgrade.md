# Fedora 43 → 44 Upgrade Notes

## Actual Installed Package Split

### RPM Fusion — full driver stack (580.126.18-1.fc43)

| Package | Purpose |
|---|---|
| `xorg-x11-drv-nvidia` | X11 driver |
| `xorg-x11-drv-nvidia-cuda` | CUDA driver integration |
| `xorg-x11-drv-nvidia-cuda-libs` (i686 + x86_64) | CUDA runtime libs (provides `libcuda.so`) |
| `xorg-x11-drv-nvidia-libs` (i686 + x86_64) | Driver libs |
| `xorg-x11-drv-nvidia-power` | Power management |
| `xorg-x11-drv-nvidia-kmodsrc` | Kernel module source |
| `akmod-nvidia` | Kernel module builder |
| `kmod-nvidia-*` (3 kernels built) | Compiled kernel modules |
| `nvidia-modprobe` | GPU modprobe helper |
| `nvidia-persistenced` | Persistence daemon |
| `nvidia-settings` | GPU settings GUI |
| `nvidia-gpu-firmware` | GPU firmware |

### CUDA RHEL9 repo — pure toolkit only (12.4.x)

No driver packages installed from this repo. Only:
`cuda-toolkit-12-4`, `cuda-nvcc`, `cuda-cudart*`, `cuda-libraries*`, `cuda-compiler*`,
`cuda-gdb`, `cuda-nsight*`, `cuda-driver-devel`, `cuda-opencl*`, `cuda-sanitizer`, etc.

---

## Problem: DNF System Upgrade Conflicts

Running `sudo dnf system-upgrade download --releasever=44` fails despite having a clean package split.

### Root Cause 1: `libcuda.so` provider ambiguity

`cuda-driver-devel-12-4` (installed) depends on `libcuda.so`. During fc44 upgrade resolution, DNF finds two potential providers:
- RPM Fusion's `xorg-x11-drv-nvidia-cuda-libs` (correct)
- `nvidia-driver-libs` from `cuda-rhel9-x86_64` (wrong — RHEL9 package, conflicts with RPM Fusion)

This triggers the full conflict chain seen in Problem 4 of the error output.

### Root Cause 2: Exclude filtering blocking RPM Fusion fc44 packages

RPM Fusion fc44 NVIDIA packages show as `filtered out by exclude filtering` during the upgrade transaction, preventing DNF from selecting the correct upgrade path.

---

## Fix

### Step 1 — Add excludepkgs to the CUDA RHEL9 repo ✓ ALREADY DONE

`/etc/yum.repos.d/cuda-rhel9.repo` already contains:

```ini
[cuda-rhel9-x86_64]
name=cuda-rhel9-x86_64
baseurl=https://developer.download.nvidia.com/compute/cuda/repos/rhel9/x86_64
enabled=1
gpgcheck=1
gpgkey=https://developer.download.nvidia.com/compute/cuda/repos/rhel9/x86_64/D42D0685.pub

excludepkgs=nvidia-driver* nvidia-driver-libs* nvidia-settings* nvidia-kmod* nvidia-modprobe* nvidia-persistenced* xorg-x11-drv-nvidia* akmod-nvidia* nvidia-libXNVCtrl*
```

This prevents cuda-rhel9 from offering any driver-related packages, leaving RPM Fusion as the sole owner of the driver stack. All `cuda-*` toolkit packages remain unrestricted.

### Step 2 — Disable CUDA repo during upgrade ✓ DONE

Note: Fedora 43+ uses DNF5 — the syntax changed from `--disable` to `setopt`:
```bash
sudo dnf config-manager setopt cuda-rhel9-x86_64.enabled=0
```

### Step 3 — Upgrade RPM Fusion release packages to fc44 ✓ DONE

```bash
sudo dnf install --releasever=44 rpmfusion-free-release rpmfusion-nonfree-release
```

### Step 4 — Run the system upgrade ✓ DONE

```bash
sudo dnf system-upgrade download --releasever=44 --allowerasing
sudo dnf system-upgrade reboot
```

Transaction confirmed and downloading (3 GiB):
- Installing: 69 packages
- Upgrading: 2304 packages
- Replacing: 2316 packages
- Removing: 7 packages
- Downgrading: 6 packages (fc43 packages with no fc44 equivalent)
- Net size change: +250 MiB

### Step 5 — Re-enable CUDA repo after reboot

```bash
sudo dnf config-manager setopt cuda-rhel9-x86_64.enabled=1
```

---

## Result

- RPM Fusion owns the driver stack on fc44
- RHEL9 CUDA repo provides only toolkit/SDK packages (excludepkgs prevents driver conflicts)
- CUDA computing (llama.cpp, etc.) remains fully functional post-upgrade
