<BDS:create_file fileName="README.md" content="# Eureka R15 OneUI + KernelSU Next — GitHub Actions Kernel Builder

This repo automatically builds a TWRP-flashable Eureka Kernel R15 OneUI with KernelSU Next baked in — all on GitHub's servers. No local toolchain needed.
🚀 How to Use (3 steps)
1. Fork this repo / push these files to your own GitHub repo
2. Trigger the build
Go to the Actions tab of your repo

Select "Build Eureka R15 OneUI + KSU Next" from the left sidebar

Click the "Run workflow" button

Choose options:
KernelSU Next version: v1.1.1
, v1.2.0
, etc. (check tags here)

Device defconfig: exynos7885-a20_defconfig
 (for Galaxy A20), or browse the options below


Click Run workflow

3. Download your kernel
Wait ~20-40 minutes

When the workflow finishes (✅ green), click into it

Scroll down to Artifacts → download the .zip


Flash it in TWRP

📱 Supported Defconfigs (Device)





DeviceDefconfigGalaxy A10exynos7884B-a10_defconfig
Galaxy A20exynos7885-a20_defconfig
Galaxy A20eexynos7885-a20e_defconfig
Galaxy A30exynos7904-a30_defconfig
Galaxy A30sexynos7904-a30s_defconfig
Galaxy A40exynos7904-a40_defconfig
Galaxy A7 (2018)exynos7885-a7y18lte_defconfig
Galaxy A8 (2018)exynos7885-a8y18lte_defconfig

(If the exact defconfig name differs, the build log will list available options.)
📦 What You Get
A flashable .zip
 containing:
Eureka Kernel R15 OneUI (Linux 4.4.x, upstreamed)

KernelSU Next (user-specified version)

AnyKernel3 — flashes cleanly without touching your ramdisk

🛡️ Before Flashing
In TWRP Terminal, back up your current boot:
bash

Copy

Download





dd if=/dev/block/by-name/BOOT of=/sdcard/boot-backup.img

If bootloop: restore with dd if=/sdcard/boot-backup.img of=/dev/block/by-name/BOOT
.
🔁 Customizing
Edit .github/workflows/build-kernel.yml
 to change Proton Clang version, add patches, or switch to GCC.

Edit anykernel3/anykernel.sh
 to adjust device detection or block path.

The workflow runs on workflow_dispatch
 — fully manual, no automatic triggers.

⚠️ Caveats
One UI 6.0 port ROMs may include ROM-specific kernel patches not present in upstream Eureka. Test and be ready to restore your backup.

GitHub Actions has a 120-minute timeout — kernel builds usually finish in ~30 min.

Artifacts expire after 30 days (GitHub's default). Re-run to rebuild.

📜 Credits
Eureka Kernel by eurekadevelopment

KernelSU Next by KernelSU-Next

AnyKernel3 by osm0sis

Proton Clang by kdrag0n
