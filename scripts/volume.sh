#!/bin/bash

vol=" "

vol+=$(awk -F'[][]' '/dB/ {print $2 }' <(amixer sget Master))

echo -e $vol
