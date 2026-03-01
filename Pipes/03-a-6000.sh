#!/bin/bash
cp /srv/fmi-os/exercises/data/emp.data ~/

cat emp.data | awk 'END {print NR}'
cat emp.data | awk -F' ' ' {print $NF}'
cat emp.data | awk -F' ' ' END {print $NF}'
cat emp.data | awk -F' ' ' $NF  > 4 {print $0}'
cat emp.data | awk -F' ' ' length(NF) > 4 {print $0}'
cat emp.data | awk '{total += NF} END {print total}'
cat emp.data | awk '/Beth/'
cat emp.data | awk ' length($3) > max { max = length($3); line = $0} END {print line}'
cat emp.data | awk ' NF > 0 '
cat emp.data | awk ' $NF > 17 '
#TO DO
