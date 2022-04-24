SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cp -v "${BEAGLEDRONE_FILES_DIR}/dtb/${BEAGLEDRONE_DTB}" ${TFTP_DIR}
cp -v "${BEAGLEDRONE_FILES_DIR}/dtb/${BEAGLEDRONE_DTB}" ${OUT_DIR}
