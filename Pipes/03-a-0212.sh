#!/bin/bash
cat /etc/passwd | tr -s ',/' '::' | cut -d ':' -f5,9 | tr ':' ' '
