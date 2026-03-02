#!/bin/bash
cat /etc/services | awk -v count=0 ' /^#/ {count++} END {print count}'
