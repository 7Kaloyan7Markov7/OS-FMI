#!/bin/bash

if [[ ${#} -ne 2 ]] then
  echo "The number of arguments is not equal to 2" >&2
  exit 1
fi

if ! [[ ${1} =~ ^[1-9][0-9]*$ && ${2} =~ ^[1-9][0-9]*$ ]]; then
  echo "Both arguments must be positive integers" >&2
  exit 1
fi

if [[ ${1} -le ${2} ]]; then
  echo "The first argument must be higher than the second argument" >&2
  exit 1
fi
