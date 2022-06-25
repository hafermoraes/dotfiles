#!/bin/bash

cpu="cpu "

# percentual de uso da CPU
cpu+=$(top -b -n 1 | grep -i "cpu(s)" | sed 's/,/./g' | awk '{print $2}')

echo -e "$cpu%"
