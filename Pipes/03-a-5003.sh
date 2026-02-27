#!/bin/bash
cat /etc/passwd | tr ',' ':' | cut -d ':' -f5 | awk -F ' ' 'length($2) < 8 {print $1,$2}'
