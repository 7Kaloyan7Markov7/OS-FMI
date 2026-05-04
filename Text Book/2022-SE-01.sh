#!/bin/bash

if [[ ${#} -ne 0 ]]; then
    echo "This script does not require any arguments" >&2
    exit 1;
fi

home_dir=$(grep -e "\b$(whoami)\b" /etc/passwd | cut -d ':' -f 6)

files_home_dir=$(mktemp)
all_files=$(mktemp)

find ${home_dir} -mindepth 1 -maxdepth 1 -user $(whoami) -type f | sort > ${files_home_dir}
find ${home_dir} -user $(whoami) -type f | sort > ${all_files}

comm -23 ${files_home_dir} ${all_files} | awk '{print $1}' | xargs chmod 664 > /dev/null 2>&1

rm ${all_files} 2>/dev/null
rm ${files_home_dir} 2>/dev/null
