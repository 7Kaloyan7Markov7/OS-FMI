#!/bin/bash
awk -F: -v name="$(whoami)" '$1 == name { print $4 }' /etc/passwd
