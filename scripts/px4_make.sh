SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${PX4_DIR}

make beaglebone_blue

#sudo mkdir -p ${NFSROOT_DIR}/opt/px4/bin
echo "copy.."
sudo rm -rf ${NFSROOT_DIR}/opt/px4/bin
sudo cp -r ${PX4_DIR}/build/beaglebone_blue_default/bin ${NFSROOT_DIR}/opt/px4

#sudo mkdir -p ${NFSROOT_DIR}/lib/firmware
#sudo cp ${PX4_DIR}/build/beaglebone_blue_default/librobotcontrol-prefix/src/librobotcontrol/pru_firmware/fw/am335x-pru1-rc-servo-fw ${NFSROOT_DIR}/lib/firmware