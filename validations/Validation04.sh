#!/bin/bash

read username

if [[ -z "${username}" ]]; then
    echo "This string is empty" >&2
    exit 1
fi

if ! [[ "${username}" =~ ^[a-z0-9]+$ ]]; then
    echo "The string does not contain only letters AND numbers" >&2
    exit 1
fi

if [[ "${#username}" -lt 3 || "${#username}" -gt 16 ]]; then
    echo "The length of the name is not in the range [3-16]" >&2
    exit 1
fi
