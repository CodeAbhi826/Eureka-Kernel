# AnyKernel3 for Galaxy A20 (Exynos 7885)
# osm0sis @ xda-developers

properties() { '
kernel.string=skewkernel
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=r0s
device.name2=a20
device.name3=a20lte
device.name4=a205f
device.name5=a20e
device.name6=essi
'; }

# Auto-detect boot block (lowercase boot works on your device)
if [ -e /dev/block/platform/13500000.dwmmc0/by-name/boot ]; then
	block=/dev/block/platform/13500000.dwmmc0/by-name/boot;
else
	block=/dev/block/platform/13500000.dwmmc0/by-name/BOOT;
fi

is_slot_device=0;
ramdisk_compression=auto;

. tools/ak3-core.sh;

split_boot;
flash_boot;
flash_dtb;
flash_dtbo;

# copy extra files
cp /tmp/anykernel/tools/espectrum.zip /data/media/0/enable_spectrum_support.zip 2>/dev/null;
cp /tmp/anykernel/tools/changelog.txt /data/media/0/changelog.txt 2>/dev/null;
