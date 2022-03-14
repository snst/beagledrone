SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
#source "${SCRIPT_DIR}/build_env.sh"

cd ${SCRIPT_DIR}/../px4
make px4_sitl jmavsim
