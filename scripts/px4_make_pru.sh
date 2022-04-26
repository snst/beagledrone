SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${PX4_DIR}/boards/beaglebone/blue/pru/pwmpru
make
cp ${PX4_DIR}/boards/beaglebone/blue/pru/pwmpru/pwmpru1 ${PX4_EXTERNAL_DIR}/rootfs-overlay/lib/firmware/am335x-pru1-fw
