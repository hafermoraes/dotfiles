#!/bin/bash

# compositor
#compton --vsync opengl-swc --backend glx &

# ajuste automático de temperatura e brilho da tela ao longo do dia
redshift -c ~/.config/redshift/redshift.conf &

# inicializa o servidor do emacs
emacs --daemon &

# papel de parede
feh --randomize --bg-fill ~/.config/wallpapers/* &

# status bar
xsetroot -name "$(date '+%d.%m.%Y (W%W)')"

# daemon de atalhos do teclado
sxhkd -c ~/.config/sxhkd/sxhkdrc &

# configs do Xorg
xset r rate 300 50 &
xset s off &
xset -dpms &

# conky (atalhos do teclado)
conky --config=$HOME/.config/conky/conky.conf &

# dwmblocks
dwmblocks &
