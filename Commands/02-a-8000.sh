#!bin/bash
find /etc/ -mindepth 1 -maxdepth 1 -type f -perm -0444 -exec cp {}  ~/myetc/ \;
