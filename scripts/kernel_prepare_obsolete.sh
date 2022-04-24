SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${KERNEL_DIR}

sed -i 's/^FULL_REBUILD=1/#FULL_REBUILD=1/' "${KERNEL_BUILD_DIR}/build_kernel.sh"
cp ${KERNEL_BUILD_EXTERNAL_DIR}/KERNEL/.config ${KERNEL_BUILD_EXTERNAL_DIR}/KERNEL/.config

