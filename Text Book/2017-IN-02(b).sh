#!/bin/bash
find ~ -mindepth 1 -printf "%s:%p\n" | sort -nr | head -5 |cut -d ':' -f2 | xargs rm -r
