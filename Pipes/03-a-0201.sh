#!/bin/bash
cat /etc/passwd | sort -t ':' -k3 -n 
