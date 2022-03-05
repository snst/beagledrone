SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${PRUDEBUG_DIR}
make

sudo mkdir -p ${NFSROOT_DIR}/opt/bin/
sudo cp ${PRUDEBUG_DIR}/prudebug ${NFSROOT_DIR}/opt/bin/