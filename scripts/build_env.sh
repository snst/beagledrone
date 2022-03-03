BE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

REPO_TOOL=${SCRIPT_DIR}/repo

if [ ! -f "$REPO_TOOL" ]; then
    curl https://storage.googleapis.com/git-repo-downloads/repo > ${REPO_TOOL}
    chmod +x ${REPO_TOOL}
fi

REPO_TOOL="python3 ${REPO_TOOL}"

ROOT_DIR="${BE_DIR}/.."
ARDUPILOT_DIR="${ROOT_DIR}/ardupilot"
BUILDROOT_DIR="${ROOT_DIR}/buildroot"
UBOOT_DIR="${ROOT_DIR}/u-boot"
LIBROBOTCONTROL_DIR="${ROOT_DIR}/librobotcontrol"
NFSROOT_DIR="${ROOT_DIR}/nfsroot"
KERNELBUILDSCRIPTS_DIR="${ROOT_DIR}/kernelbuildscripts"
TOOLCHAIN_NAME="gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf"
TOOLCHAIN_DIR="${ROOT_DIR}/${TOOLCHAIN_NAME}"
TFTP_DIR="${ROOT_DIR}/tftpboot"
DTC_DIR="${ROOT_DIR}/dtc"
PRUDEBUG_DIR="${ROOT_DIR}/prudebug-rl"

BBBL_DEFCONFIG="beagleboneblue_defconfig"
BBBL_OVERLAY="beagleboneblue"

BUILDROOT_DEFCONFIG_DIR="${BUILDROOT_DIR}/configs"
BUILDROOT_OVERLAY_DIR="${BUILDROOT_DIR}/board"

export KERNEL_VERSION="5.10.90-ti-rt-r36"

#export CC=${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-gcc
#export CXX=${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-gcc

export PATH=$PATH:${BUILDROOT_DIR}/output/host/usr/bin:${BUILDROOT_DIR}/output/host/share/ti-cgt-pru/bin
export CROSS_COMPILE=${BUILDROOT_DIR}/output/host/usr/bin/arm-linux-gnueabihf-
export PRU_PATH=${BUILDROOT_DIR}/output/host/usr/share/ti-cgt-pru
export PRU_C_DIR="${BUILDROOT_DIR}/output/host/share/ti-cgt-pru/include;${BUILDROOT_DIR}/output/host/share/ti-cgt-pru/lib"

#export LINKER=${BUILDROOT_DIR}/output/host/usr/bin/arm-linux-gnueabihf-gcc

export PYTHON=/usr/bin/python3

ARDUPILOT_WAF=$ARDUPILOT_DIR/modules/waf/waf-light

#reset