#!/bin/bash
find /tmp/ -mindepth 1 -maxdepth 1 -type f \( -group "$(id -gn)" -o -perm /g=w,o=w \) # with "/" "," means OR | with "-"  "," means AND 
#find /tmp/ -mindepth 1 -maxdepth 1 -type f -group "$(id -gn)"
#find /tmp/ -mindepth 1 -maxadept 1 -type f -group students
#find /tmp/ -mindepth 1 -maxdepth 1 -type f -perm /g=w,o=w
