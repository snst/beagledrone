SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

#cd ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/aiopru
#make
#make test
#sudo mkdir -p ${NFSROOT_DIR}/opt/bin
#sudo cp RcAioPRUTest ${NFSROOT_DIR}/opt/bin
#sudo cp start_test ${NFSROOT_DIR}/opt/bin

#cd ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/pwmpru
#make
cd ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/rcinpru
make
#sudo cp ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/rcinpru/rcinpru0 ${NFSROOT_DIR}/lib/firmware
sudo cp ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/rcinpru/rcinpru0 ${NFSROOT_DIR}/lib/firmware/am335x-pru0-fw
#sudo cp ${ARDUPILOT_DIR}/Tools/Linux_HAL_Essentials/pru/pwmpru/pwmpru ${NFSROOT_DIR}/lib/firmware
sudo mkdir -p ${NFSROOT_DIR}/opt/bin/
sudo cp -r ${SCRIPT_DIR}/target/* ${NFSROOT_DIR}/opt/bin/