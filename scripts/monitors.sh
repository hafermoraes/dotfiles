#!/usr/bin/env bash

case "$(printf "dual\nuno" | dmenu -i -l 2 -p 'Monitores: ')" in
    dual) xrandr \
              --output eDP-1 \
              --primary \
              --mode 1366x768 \
              --pos 1366x0 \
              --rotate normal \
              --output HDMI-1 \
              --mode 1366x768 \
              --pos 0x0 \
              --rotate normal ;;
    uno) xrandr \
             --output eDP-1 \
             --primary \
             --mode 1366x768 \
             --pos 0x0 \
             --rotate normal \
             --output HDMI-1 \
             --off ;;
	*) exit 1 ;;
esac
