#!/bin/bash

if [[ ! -d "${1}" ]]; then
    echo "This is not a dir" >&2
    exit 1
fi
