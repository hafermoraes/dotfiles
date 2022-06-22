#!/bin/bash

# percentual de memória utilizada pelo sistema
mem="RAM: "
mem+=$(free | grep Mem | awk '{printf "%.1f%%", $3/$2 * 100.0}')

echo $mem

