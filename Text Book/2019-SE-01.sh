#!/bin/bash

if [[ ${#} -ne 1 ]]; then
    echo "This script takes only one file as an argument" >&2
    exit 1
fi

if [[ ! -f "${1}" ]]; then
    echo "This file does not exist" >&2
    exit 1
fi

if [[ ! -s "${1}" ]]; then
    echo "This file is empty" >&2
    exit 1
fi

input="${1}"

planet_type=$(cat "${input}" \
| awk -F ';' ' NR > 1 { print $0 } ' \
| sort -n -t ';' -k 3 -r \
| awk -F ';' '{print $2}' \
| head -1)

awk -F ';' -v type="${planet_type}" ' type == $2 { printf $1 "\t" $4 "\n" }' "$input" \
| sort -t ';' -k 2 -r \
| head -1
