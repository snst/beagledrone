#!/bin/bash
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
source ${SCRIPT_DIR}/build_env.sh

cd ${ROOT_DIR}
${REPO_TOOL} sync -m ${ROOT_DIR}/default.xml