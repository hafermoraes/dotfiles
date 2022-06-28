#!/bin/bash

vol=""

# amixer
#vol+=$(awk -F'[][]' '/dB/ {print $2 }' <(amixer sget Master))
#vol+=$(awk -F'[][]' '/dB/ {print $2 }' <(amixer -c 0 -M -D pulse get Master))

# pactl
vol+=$(pactl list sinks | grep -i volume: | awk '{print $5}')

echo -e $vol
