SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${ARDUPILOT_DIR}

$ARDUPILOT_WAF configure --debug --board=blue --toolchain=${TOOLCHAIN}
