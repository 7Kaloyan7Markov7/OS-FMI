#!/bin/bash
df -P > sizes.txt
tail -5 sizes.txt | sort -t ' ' -k 2
