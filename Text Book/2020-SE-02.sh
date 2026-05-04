#!/bin/bash

if [[ ${#} -ne 0 ]]; then
    echo "This script does not require any arguments" >&2
    exit 1
fi


launch_site=$(cat spacex.txt \
| grep -e "\bFailure\b" \
| awk -F'|' '{printf $2" "$3"\n"}' \
| sort \
| uniq -c \
| sort -n -r \
| head -1 \
| awk '{print $2}')

cat spacex.txt \
| grep -e "\b${launch_site}\b" \
| awk 'NR != 1' \
| sort -t '|' -k 1 -r -n \
| head -1 \
| awk -F'|' '{printf $3":"$4"\n"}'
