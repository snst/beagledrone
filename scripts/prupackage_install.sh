SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source "${SCRIPT_DIR}/build_env.sh"

cd ${ROOT_DIR}
git clone https://github.com/beagleboard/am335x_pru_package.git
cd am335x_pru_package
make
sudo make install