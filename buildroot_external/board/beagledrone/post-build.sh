#!/bin/sh
BOARD_DIR="$(dirname $0)"

cp $BOARD_DIR/uEnv.txt $BINARIES_DIR/uEnv.txt
cp $BOARD_DIR/beagledrone.dtb $BINARIES_DIR/beagledrone.dtb
#cp $BOARD_DIR/u-boot-am335x_evm-v2019.01-r7.img $BINARIES_DIR/u-boot.img
#cp $BOARD_DIR/MLO $BINARIES_DIR/MLO

. "${BOARD_DIR}/../../../scripts/build_env.sh"

echo "*** Using external kernel ***"
echo "KERNEL_BUILD_DIR: ${KERNEL_BUILD_DIR}"
echo "KERNEL_VERSION: ${KERNEL_VERSION}"
#sudo tar xfv ${KERNEL_BUILD_DIR}/deploy/${KERNEL_VERSION}-modules.tar.gz -C ${TARGET_DIR}/
#rm -rf ${TARGET_DIR}/lib/modules/5.10.30
#cp -v "${KERNEL_BUILD_DIR}/KERNEL/arch/arm/boot/zImage" $BINARIES_DIR/
#${HOST_DIR}/sbin/depmod -a -b ${TARGET_DIR} ${KERNEL_VERSION}