#!/bin/sh

GAMMA="0.6:0.6:0.6"
CURRSCREEN=$(xrandr --current | grep -i ' connected' | cut -f1 -d' ')
CURRBRIGHT=$(xrandr --current --verbose | grep -m 1 'Brightness:' | cut -f2- -d:)

if [ "$1" = "+" ] && [ $(echo "$CURRBRIGHT < 2" | bc) -eq 1 ] 
then
        xrandr --output $CURRSCREEN --gamma $GAMMA --brightness $(echo "$CURRBRIGHT + 0.1" | bc)
elif [ "$1" = "-" ] && [ $(echo "$CURRBRIGHT > 0" | bc) -eq 1 ] 
then
        xrandr --output $CURRSCREEN --gamma $GAMMA --brightness $(echo "$CURRBRIGHT - 0.1" | bc)
elif [ "$1" = "" ] 
then
        ilum=$(awk -v NUM="$CURRBRIGHT" 'BEGIN{ printf "%.f%%", NUM*100 }')
        echo $ilum
fi
