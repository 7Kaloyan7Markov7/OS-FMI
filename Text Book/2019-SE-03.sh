#!/bin/bash
if [[ ${#} -ne 0 ]]; then
    echo "This script does not accept any arguments" >&2
    exit 1
fi

name_and_node=$(find ~/ -exec stat -c "%Y %n %i" {} ';' | sort -t ' ' -n -k 1 -r | head -1 )
latest_inode=$(echo ${name_and_node} | cut -d ' ' -f3)
latest_name=$(echo ${name_and_node} | cut -d ' ' -f2)

min_depth=1000
result=""

while read line; do
    current_inode=$(echo ${line} | cut -d ' ' -f 1)
    name=$(echo ${line} | cut -d ' ' -f 2)

    depth=$(( $(echo ${name} | tr '/' '\n' | wc -l) -1 ))

    if [[ ${depth} -lt ${min_depth} && ${current_inode} == ${latest_inode} ]]; then
        min_depth=${depth}
        result=${name}
    fi

done< <(find ~/ -exec stat -c "%i %n" {} ';')

echo ${result}
