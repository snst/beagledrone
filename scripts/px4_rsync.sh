SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

${RSYNC} ${PX4_EXTERNAL_DIR}/rootfs-overlay/opt/ root@${TARGET_IP}:/opt
${RSYNC} ${PX4_DIR}/build/beaglebone_blue_default/bin root@${TARGET_IP}:/opt/px4/
${RSYNC} ${PX4_EXTERNAL_DIR}/rootfs-overlay/ root@${TARGET_IP}:/
