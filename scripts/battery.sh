#!/bin/bash

bat=" "

bat+=$( cat /sys/class/power_supply/BAT0/capacity)

echo "$bat%"