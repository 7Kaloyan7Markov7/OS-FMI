#!/bin/bash
find /bin/ -mindepth 1 -maxdepth 1 -perm -g=rwx,u=rwx,o=rwx
#find /bin/ -mindepth 1 -maxdepth 1 -perm -777
