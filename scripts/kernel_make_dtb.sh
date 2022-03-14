SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"


mkdir -p ${TMP_DIR}

${BUILDROOT_DIR}/output/host/bin/dtc -I dts -O dtb -o ${BEAGLEDRONE_FILES_DIR}/bspm_P8_15_26-00A0.dtbo ${BEAGLEDRONE_FILES_DIR}/bspm_P8_15_26-00A0.dts
#${BUILDROOT_DIR}/output/host/bin/dtc -I dts -O dtb -o ${TMP_DIR}/bspm_DSM2_3_2e-00A0.dtbo ${BEAGLEDRONE_FILES_DIR}/bspm_DSM2_3_2e-00A0.dts
${BUILDROOT_DIR}/output/host/bin/dtc -I dts -O dtb -o ${BEAGLEDRONE_FILES_DIR}/bspm_P8_36_17-00A0.dtbo ${BEAGLEDRONE_FILES_DIR}/bspm_P8_36_17-00A0.dts
${BUILDROOT_DIR}/output/host/bin/dtc -I dts -O dtb -o ${BEAGLEDRONE_FILES_DIR}/pru1_servo_pwm.dtbo ${BEAGLEDRONE_FILES_DIR}/pru1_servo_pwm.dts


export LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:${BUILDROOT_DIR}/output/host/lib
${BUILDROOT_DIR}/output/host/bin/fdtoverlay -o "${BEAGLEDRONE_FILES_DIR}/${BEAGLEDRONE_DTB}" -i "${KERNELBUILDSCRIPTS_DIR}/KERNEL/arch/arm/boot/dts/am335x-boneblue.dtb" ${BEAGLEDRONE_FILES_DIR}/bspm_P8_15_26-00A0.dtbo ${BEAGLEDRONE_FILES_DIR}/bspm_P8_36_17-00A0.dtbo ${BEAGLEDRONE_FILES_DIR}/pru1_servo_pwm.dtbo

cp -v "${BEAGLEDRONE_FILES_DIR}/${BEAGLEDRONE_DTB}" ${TFTP_DIR}
