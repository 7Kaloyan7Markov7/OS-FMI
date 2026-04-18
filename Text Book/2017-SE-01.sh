#!/bin/bash
ls -li | sort -r -t ' ' -k 3 | head -6 | tail -5 
