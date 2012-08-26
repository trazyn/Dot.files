#!/bin/bash
#
# ~/.xinitrc

# Fonts
xset +fp /usr/share/fonts/artwiz-fonts &
xset fp rehash &

# Set color
xrdb ~/.Xresources &

# Panel
tint2 &

# Audio
pulseaudio -D --start &

# Shadow
xcompmgr -cC &
# xcompmgr -t 1.5 -l 1.5 -c -C -f -r 6 -o 0.6 -I 0.0.3 -O 0.03 &

# Wallpaper
sleep 1.1s && feh --bg-fill /media/Wallpaper/07.23/_pumped_up_kicks.png &

# Desk weather widget
myweather &

# Window Manager
exec openbox-session
