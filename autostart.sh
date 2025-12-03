#!/bin/bash

# compositor
compton --vsync opengl-swc --backend glx --config=$HOME/.config/compton.conf &

# ajuste automático de temperatura e brilho da tela ao longo do dia
redshift -c $HOME/.config/redshift/redshift.conf &

# dropbox
dropbox start -i &

# SSH persistente na sessão
# eval $(keychain --eval id_ed25519) &
eval `keychain --eval --agents ssh id_ed25519` &

# inicializa o servidor do emacs
emacs --daemon &

# papel de parede
feh --randomize --bg-fill $HOME/.config/wallpapers/* &

# daemon de atalhos do teclado
sxhkd -c $HOME/.config/sxhkd/sxhkdrc &

# configs do Xorg
xset r rate 300 50 &
xset s off &
xset -dpms &

# conky (atalhos do teclado)
conky --config=$HOME/.config/conky/conky.conf &

# dwmblocks
dwmblocks &

# slstatus
#slstatus &
