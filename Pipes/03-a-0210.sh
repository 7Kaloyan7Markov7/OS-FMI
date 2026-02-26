#!/bin/bash
cat /etc/passwd | tr ',' ':' | cut -d ':' -f1,5
