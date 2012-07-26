#!/bin/bash
#
# ~/.xinitrc

# Read font
xset +fp /usr/share/fonts/artwiz-fonts &
xset fp rehash &

# Set color
xrdb ~/.Xresources &

# Panel
tint2 -c .config/tint2/tri_2-top.tint2rc &

pulseaudio --start &
xcompmgr -cC &

# Wallpaper
#sleep 1.1s && feh --bg-fill /media/Wallpaper/Beauty\ Wallpaper/1440x900\ -\ 15\ inch.jpg &
sleep 1.1s && feh --bg-fill /media/Wallpaper/12-21-1/211545q0k3mkk9k31kfk03.jpg &

myweather &

# Window Manager
exec openbox-session
