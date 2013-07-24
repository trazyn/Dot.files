#!/bin/bash
#
#
# ~/.xinitrc

xset +fp /usr/share/fonts/artwiz-fonts &
xset fp rehash &

xrdb ~/.Xresources &

#xcompmgr -cC &
#cairo-compmgr &
compton &

alsactl init > /dev/null

tint2 &

myweather &

alsa-tray &

python3 ~/.config/goproxy/proxy.py > /dev/null &

feh --bg-fill /mnt/d/Wallpaper/Beautiful/jingxuan101.jpg &

exec openbox-session

#exec gnome-session-cinnamon
