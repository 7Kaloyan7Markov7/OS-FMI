#!/bin/bash

if [[ "${#}" -ne 1 ]]; then
    echo "This script takes only one file as an argument" >&2
    exit 1
fi

if [[ ! -f "${1}" ]]; then
    echo "This file does not exist" >&2
    exit 1
fi

if [[ ! -s "${1}" ]]; then
    echo "This file is empty" >&2
    exit 1
fi
