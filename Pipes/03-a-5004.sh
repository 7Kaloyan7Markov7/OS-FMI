#!/bin/bash
cat /etc/passwd | awk -F '[:, ]' 'length($6) < 8 {print $0}'
