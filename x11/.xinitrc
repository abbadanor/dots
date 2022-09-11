#!/bin/sh

xset r rate 250 30
xsetroot -cursor_name left_ptr
xrdb -merge ~/.config/one-dark
ln -sf /home/adam/.config/xkb/sv /usr/share/X11/xkb/symbols/
setxkbmap sv

lxsession &
pipewire &
pipewire-pulse &
wireplumber &
exec bspwm
