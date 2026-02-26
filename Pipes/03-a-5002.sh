#!/bin/bash
cat /etc/passwd | tr -s ',' ':' | cut -d ':' -f 5 | awk -F' ' 'length($2) > 6 {print $1,$2}'
