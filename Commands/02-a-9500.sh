#!/bin/bash
find /etc/ -mindepth 1 -maxdepth 1 -type f -exec wc -l {} \;
#find /etc/ -mindepth 1 -maxdepth 1 -type f -exec wc -l {} +;  Shows the total amount of lines
