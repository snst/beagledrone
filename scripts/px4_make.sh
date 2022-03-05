SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${PX4_DIR}

make beaglebone_blue

sudo cp ${PX4_DIR}/build/beaglebone_blue_default/bin/px4 ${NFSROOT_DIR}/opt/px4/bin