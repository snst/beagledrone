SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

sudo mkdir -p ${NFSROOT_DIR}/boot/dtbs/${KERNEL_VERSION}/
sudo tar xfv ${KERNELBUILDSCRIPTS_DIR}/deploy/${KERNEL_VERSION}-dtbs.tar.gz -C ${NFSROOT_DIR}/boot/dtbs/${KERNEL_VERSION}/

sudo tar xfv ${KERNELBUILDSCRIPTS_DIR}/deploy/${KERNEL_VERSION}-modules.tar.gz -C ${NFSROOT_DIR}
