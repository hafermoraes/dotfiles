#!/bin/bash

# compositor
#compton --vsync opengl-swc --backend glx &

# inicializa o servidor do emacs
emacs --daemon &

# papel de parede
nitrogen --restore &

# daemon de atalhos do teclado
sxhkd -c ~/.config/sxhkd/sxhkdrc &

# configs do Xorg
xset r rate 300 50 &
xset s off &
xset -dpms &
