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
# xcompmgr -cC &
xcompmgr -t 1.5 -l 1.5 -c -C -f -r 6 -o 0.6 -I 0.0.3 -O 0.03 &

# Wallpaper
#sleep 1.1s && feh --bg-fill /media/Wallpaper/Beauty\ Wallpaper/1440x900\ -\ 15\ inch.jpg &
sleep 1.1s && feh --bg-fill /media/Wallpaper/12-21-1/211545q0k3mkk9k31kfk03.jpg &

# Desk weather widget
myweather &

# Window Manager
exec openbox-session
