#!/bin/bash

if [[ ${#} -ne 0 ]]; then
    echo "This script does not require any arguments" >&2
    exit 1
fi

combinations=$(mktemp)

while read line; do
    combination=$(echo ${line} | head -c 3 | tail -c 2)
    echo "${combination}" >> ${combinations}
done< <(cat /etc/passwd | grep -e ", Inf" | grep -e "a,")

cat ${combinations} | sort | uniq -c | sort -n -r | head -n 1 | awk '{printf $1" "$2"\n"}'

rm ${combinations}
