#!/bin/bash

find / -user $(whoami) -regex '.*\.blend[0-9]+' 2> /dev/null
