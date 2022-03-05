SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${KERNELBUILDSCRIPTS_DIR}

unset FULL_REBUILD
./build_kernel.sh
