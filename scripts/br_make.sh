SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${BUILDROOT_DIR}
reset

echo "$KERNEL_BUILD_DIR"
if [[ $# -gt 0 && $1 == "-c" ]] ; then
    make BR2_EXTERNAL=${BUILDROOT_EXTERNAL} clean 2>&1 | tee build.log
else
    make BR2_EXTERNAL=${BUILDROOT_EXTERNAL} 2>&1 | tee build.log
fi

#cp ${BUILDROOT_DIR}/output/images/rootfs.cpio.uboot ${TFTP_DIR}

#${SCRIPT_DIR}/br_deploy.sh
