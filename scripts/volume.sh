#!/bin/bash

vol=""

# amixer
#vol+=$(awk -F'[][]' '/dB/ {print $2 }' <(amixer sget Master))

# pactl
vol+=$(pactl list sinks | grep -i volume: | awk '{print $5}')

echo -e $vol
