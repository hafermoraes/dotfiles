#!/bin/bash

#bat=" "
bat="  "

bat+=$( cat /sys/class/power_supply/BAT0/capacity)

echo -e "$bat%"
