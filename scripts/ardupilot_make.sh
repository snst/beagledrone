SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${ARDUPILOT_DIR}

$ARDUPILOT_WAF 

mkdir -p ${NFSROOT_DIR}/opt/ardupilot
sudo cp ${ARDUPILOT_DIR}/build/blue/bin/arducopter ${NFSROOT_DIR}/opt/ardupilot
