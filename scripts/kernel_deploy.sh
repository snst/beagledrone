SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"


sudo mkdir -p ${NFSROOT_DIR}/boot/dtbs/${KERNEL_VERSION}/
sudo tar xfv ${KERNEL_BUILD_DIR}/deploy/${KERNEL_VERSION}-dtbs.tar.gz -C ${NFSROOT_DIR}/boot/dtbs/${KERNEL_VERSION}/

sudo tar xfv ${KERNEL_BUILD_DIR}/deploy/${KERNEL_VERSION}-modules.tar.gz -C ${NFSROOT_DIR}

cd ${KERNEL_BUILD_DIR}

ZIMAGE_SRC="${KERNEL_BUILD_DIR}/KERNEL/arch/arm/boot/zImage"

cp -v ${ZIMAGE_SRC} ${TFTP_DIR}
cp -v ${ZIMAGE_SRC} ${OUT_DIR}
