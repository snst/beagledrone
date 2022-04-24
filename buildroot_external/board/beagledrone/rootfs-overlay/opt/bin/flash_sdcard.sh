#!/bin/sh
set -x 

die() {
        echo "Error: $1"
        exit 1
}

emmc=/dev/mmcblk1
sdcard=/dev/mmcblk0

[ -b ${emmc} ] || die "${emmc} / emmc not found."
[ -b ${sdcard} ] || die "${sdcard} / sdcard not found."

dd if=${sdcard} of=${emmc} bs=300MB count=1
sync
#blockdev --flushbufs ${emmc}

cd /mnt
mkdir -p boot
mount ${emmc}p1 /mnt/boot
#cp mnt/boot/uEnv_emmc.txt mnt/boot/uEnv.txt

sed -i 's/bootpart=0:1/bootpart=1:1/' /mnt/boot/uEnv.txt
sed -i 's/bootpartition=mmcblk0p2/bootpartition=mmcblk1p2/' /mnt/boot/uEnv.txt

sync
umount /mnt/boot
