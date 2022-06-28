#!/bin/bash

FILE=/sys/class/power_supply/BAT0/capacity

if [ -f "$FILE" ]; then
  # notebook with battery   
  #bat=" "
  bat=""
  bat+=$( cat /sys/class/power_supply/BAT0/capacity)
  echo -e "$bat%"
else
  # desktop computer (no battery)
  echo -e ""
fi

