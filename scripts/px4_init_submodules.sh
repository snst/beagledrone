SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${PX4_DIR}

git submodule sync --recursive
git submodule update --recursive --init
#make distclean

