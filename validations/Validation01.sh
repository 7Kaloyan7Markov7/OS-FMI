#!/bin/bash
#test

if [[ ${#} -ne 1 ]]; then

  echo "This script takes only 1 argument" >& 2
  exit 1

fi
