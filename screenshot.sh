#!/bin/bash

sleep 1s; scrot -s ~/Imagens/Screenshots/%Y-%m-%d_%H:%M_$wx$h_ss.png -e 'xclip -selection clipboard -target image/png < $f'
