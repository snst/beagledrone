SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

sudo cp -r ${BUILDROOT_OVERLAY_DIR}/${BUILDROOT_BOARD_NAME}/rootfs-overlay/* ${NFSROOT_DIR}