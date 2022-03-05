SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${KERNELBUILDSCRIPTS_DIR}

ZIMAGE_SRC="${KERNELBUILDSCRIPTS_DIR}/KERNEL/arch/arm/boot/zImage"

cp -v ${ZIMAGE_SRC} ${TFTP_DIR}
