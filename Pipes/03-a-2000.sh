#!/bin/bash
head -12 /etc/passwd
head - 1 /etc/passwd | cut -c 1-26
head -$( ( $(cat /etc/passwd | wc -l) - 4 ) ) /etc/passwd
tail -17 /etc/passwd
tail -151 /etc/passwd | head -1
tail -13 /etc/passwd | head -1 | tail -c 5
