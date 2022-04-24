SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${KERNEL_BUILD_DIR}

sed -i 's/^FULL_REBUILD=1/#FULL_REBUILD=1/' "${KERNEL_BUILD_DIR}/build_kernel.sh"
export FULL_REBUILD=1
./build_kernel.sh

${SCRIPT_DIR}/kernel_deploy.sh