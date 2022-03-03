SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${BUILDROOT_DIR}

make 2>&1 | tee build.log

cp ${BUILDROOT_DIR}/output/images/rootfs.cpio.uboot ${TFTP_DIR}

#sudo rm -rf ${NFSROOT_DIR}/*
sudo tar -C ${NFSROOT_DIR} -xf ${BUILDROOT_DIR}/output/images/rootfs.tar
