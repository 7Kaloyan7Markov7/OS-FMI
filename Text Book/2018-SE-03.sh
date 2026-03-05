#!/bin/bash
cat /etc/passwd | tr -s ',' ':' | grep -a "SI" | sort -t ':' -k3 |sort -t '/' -k 4|cut -d ':' -f 5,7
#hi
