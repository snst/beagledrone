SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"


${RSYNC} ${BUILDROOT_DIR}/output/images/zImage root@${TARGET_IP}:/mnt/boot

