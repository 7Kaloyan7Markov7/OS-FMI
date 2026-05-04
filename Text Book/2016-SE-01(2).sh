#!/bin/bash

if [[ ${#} -ne 1 ]]; then
    echo "This script requires one argument" >&2
    exit 1
fi

if [[ ! -d ${1} ]]; then
    echo "This file is a not a directory" >&2
    exit 1
fi

while read line; do

    if [[ ! -e ${line} ]]; then
        echo "${line}"
    fi

done< <(find ${1} -type l)
