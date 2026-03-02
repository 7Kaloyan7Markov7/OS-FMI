#!/bin/bash
find ~ -type d ! -perm 755 -exec chmod 755 {} \;
