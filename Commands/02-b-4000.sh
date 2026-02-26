#!/bin/bash
cp /etc/$(find /etc -maxdepth 1 -type f -printf "%s %f\n"| sort -n | head -1 | cut -d ' ' -f2) ~/
