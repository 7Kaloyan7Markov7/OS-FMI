#!/bin/bash
cat /etc/passwd | cut -d ':' -f 1 | tr 'a-z' 'A-Z'
#cat /etc/passwd | cut -d ':' -f 1 | tr '[:lower:]' '[:upper:]'
