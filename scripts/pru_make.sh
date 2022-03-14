SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

#cd ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/rcinpru
#make
#sudo cp ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/rcinpru/rcinpru0 ${NFSROOT_DIR}/lib/firmware/am335x-pru0-fw
#sudo mkdir -p ${NFSROOT_DIR}/opt/bin/
#sudo cp -r ${SCRIPT_DIR}/target/* ${NFSROOT_DIR}/opt/bin/

sudo cp -v ${BEAGLEDRONE_FILES_DIR}/pwmpru1 ${NFSROOT_DIR}/lib/firmware/${PRU1_BINARY_NAME}