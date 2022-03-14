SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cp "${BEAGLEDRONE_FILES_DIR}/${BEAGLEDRONE_DTB}" ${TFTP_DIR}
