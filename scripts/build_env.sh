BE_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

REPO_TOOL=${BE_DIR}/repo

if [ ! -f "$REPO_TOOL" ]; then
    curl https://storage.googleapis.com/git-repo-downloads/repo > ${REPO_TOOL}
    chmod +x ${REPO_TOOL}
fi

TARGET_IP="192.168.0.198"

REPO_TOOL="python3 ${REPO_TOOL}"

ROOT_DIR="${BE_DIR}/.."
ARDUPILOT_DIR="${ROOT_DIR}/ardupilot"
BUILDROOT_DIR="${ROOT_DIR}/buildroot"
PX4_DIR="${ROOT_DIR}/px4"
PX4_EXTERNAL_DIR="${ROOT_DIR}/px4_external"
UBOOT_DIR="${ROOT_DIR}/u-boot"
LIBROBOTCONTROL_DIR="${ROOT_DIR}/librobotcontrol"
NFSROOT_DIR="${ROOT_DIR}/nfsroot"
KERNEL_BUILD_DIR="${ROOT_DIR}/kernel"
KERNEL_BUILD_EXTERNAL_DIR="${ROOT_DIR}/kernel_external"
TOOLCHAIN_NAME="gcc-linaro-6.5.0-2018.12-x86_64_arm-linux-gnueabihf"
TOOLCHAIN_DIR="${ROOT_DIR}/${TOOLCHAIN_NAME}"
TFTP_DIR="${ROOT_DIR}/tftpboot"
OUT_DIR="${ROOT_DIR}/out"
#DTC_DIR="${ROOT_DIR}/dtc"
PRUDEBUG_DIR="${ROOT_DIR}/prudebug-rl"
BEAGLEDRONE_FILES_DIR="${ROOT_DIR}/files"
BEAGLEDRONE_DTB="beagledrone.dtb"

BUILDROOT_BOARD_NAME="beagledrone"
BUILDROOT_DEFCONFIG="${BUILDROOT_BOARD_NAME}_defconfig"
BUILDROOT_DEFCONFIG_DIR="${BUILDROOT_DIR}/configs"
BUILDROOT_OVERLAY_DIR="${BUILDROOT_DIR}/board"
BUILDROOT_EXTERNAL="${ROOT_DIR}/buildroot_external"

PRU1_BINARY_NAME="am335x-pru1-fw"

export KERNEL_VERSION="5.10.100-ti-rt-r37"

#export CC=${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-gcc
#export CXX=${TOOLCHAIN_DIR}/bin/arm-linux-gnueabihf-gcc

export PATH=$PATH:${BUILDROOT_DIR}/output/host/usr/bin:${BUILDROOT_DIR}/output/host/share/ti-cgt-pru/bin
export CROSS_COMPILE=${BUILDROOT_DIR}/output/host/usr/bin/arm-linux-gnueabihf-
export PRU_PATH=${BUILDROOT_DIR}/output/host/usr/share/ti-cgt-pru
export PRU_C_DIR="${BUILDROOT_DIR}/output/host/share/ti-cgt-pru/include;${BUILDROOT_DIR}/output/host/share/ti-cgt-pru/lib"

export PYTHON=/usr/bin/python3

ARDUPILOT_WAF=$ARDUPILOT_DIR/modules/waf/waf-light

mkdir -p ${OUT_DIR}

#DTC_TOOL=${DTC_DIR}/dtc

#reset