#!/bin/bash
find ./myetc -mindepth 1 -maxdepth 1 -name 'c*' -exec tar -cf ~/c_start.tar {} +;
rm -r myetc
rm -r c_start.tar
