#!/bin/bash
cp /srv/fmi-os/exercises/data/emp.data ~/

cat emp.data | awk 'END {print NR}'
