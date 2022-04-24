SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

#sudo rm -rf ${NFSROOT_DIR}/*
mkdir -p ${NFSROOT_DIR}
sudo tar -C ${NFSROOT_DIR} -xf ${BUILDROOT_DIR}/output/images/rootfs.tar
cp -v ${BUILDROOT_DIR}/output/images/rootfs.tar ${OUT_DIR}
cp -v ${BUILDROOT_DIR}/output/images/MLO ${OUT_DIR}
cp -v ${BUILDROOT_DIR}/output/images/rootfs.tar ${OUT_DIR}
cp -v ${BUILDROOT_DIR}/output/images/u-boot.img ${OUT_DIR}
cp -v ${BUILDROOT_DIR}/output/images/zImage ${TFTP_DIR}
