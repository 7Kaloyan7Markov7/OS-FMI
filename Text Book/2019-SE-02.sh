#!/bin/bash

a=1767225600
b=1777939199

if [[ ${#} -ne 0 ]]; then
    echo "This script does not accept any arguments" >&2
    exit 1
fi

while read file; do
    last_modified=$(stat -c "%Z" ${file})
    if [[ ${last_modified} -lt ${a} || ${last_modified} -gt ${b} ]]; then
        continue
    fi

    result=$(cat /etc/passwd | grep -a ${file} | tr ',' ':' | awk -F ':' '{printf $1 "\t" $5 "\n"}')
    echo ${result}

done < <(cat /etc/passwd | grep -a -e '\bSI\b' | awk -F ':' '{print $6}')
