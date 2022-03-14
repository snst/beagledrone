SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

sudo cp -v ${BEAGLEDRONE_FILES_DIR}/px4/* ${NFSROOT_DIR}/opt/bin