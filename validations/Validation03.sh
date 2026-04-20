#!/bin/bash

if [[ "${#}" -ne 1 ]]; then
    echo "This script takes only 1 argument" >&2
    exit 1
fi

if ! [[ -f "${1}" ]]; then
    echo "This file does not exist or it is not a normal file" >&2
    exit 1
fi

if ! [[ -r "${1}" ]]; then
    echo "This file is not readable" >&2
    exit 1
fi

wc -l < "${1}"
