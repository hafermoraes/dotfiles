#!/bin/bash

wifi=" "
wifi+=$(iwconfig wlo1 | awk '/Link Quality/{split($2,a,"=|/");printf "%d%s\n", (a[2]/a[3])*100, "%"}') # https://stackoverflow.com/a/54834627

echo -e $wifi
