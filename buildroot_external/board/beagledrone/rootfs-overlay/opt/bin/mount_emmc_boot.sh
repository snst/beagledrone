#!/bin/sh
set -x 

die() {
        echo "Error: $1"
        exit 1
}

emmc=/dev/mmcblk1

[ -b ${emmc} ] || die "${emmc} / emmc not found."

cd /mnt
mkdir -p boot
mount ${emmc}p1 /mnt/boot
