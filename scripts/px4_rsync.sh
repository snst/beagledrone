SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

rsync -v -r ${PX4_EXTERNAL_DIR}/rootfs-overlay/opt/ root@${TARGET_IP}:/opt