SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${KERNELBUILDSCRIPTS_DIR}

export FULL_REBUILD=1
./build_kernel.sh
