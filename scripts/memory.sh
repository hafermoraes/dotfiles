#!/bin/bash

# percentual de memória utilizada pelo sistema
mem=" "
#mem="ram "
mem+=$(free | grep Mem | awk '{printf "%.1f%%", $3/$2 * 100.0}')

echo -e $mem

