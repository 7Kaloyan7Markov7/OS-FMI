#!/bin/bash
cat /etc/passwd | tr -s ',/' '::' | cut -d ':' -f5,9 | tr ':' ' '
#cat /etc/passwd | tr -s ',' ':' | cut -d ':' -f 5,7 | tr -s ':' ' '
