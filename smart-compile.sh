#!/bin/bash

filename="$1"

cur_hash=$(shasum "${filename}" | awk '{print $1}')

touch .hash.txt
prv_hash=$(awk '{print $1}' .hash.txt)

exe_file="${filename%.*}" #remove .CPP

RED='\033[0;31m'   # Red color for errors
GREEN='\033[0;32m' # Green color for success
CYAN='\033[0;36m'  # Cyan color for borders
NC='\033[0m'       # No Color (white)


if [ "${cur_hash}" != "${prv_hash}" ]; then
 if ! g++ "${filename}" -o "${exe_file}" ; then
    echo -en "${CYAN}#####################\n#${NC}"
    echo -en " ${RED}Compilation Error${NC} "
    echo -en "${CYAN}#\n#####################${NC}\n"
    exit 1
 fi
  echo ${cur_hash} > .hash.txt
fi

echo -en "${CYAN}####################\n#${NC}"
echo -en " ${GREEN}Compilation Done${NC} "
echo -en "${CYAN}#\n####################${NC}\n"
./"${exe_file}"
