#!/bin/bash
#
# ~/.xinitrc

# Read font
# xset +fp /usr/share/fonts/artwiz &
xset fp rehash &

# Set color
xrdb ~/.Xresources &

# Panel
tint2 &

pulseaudio --start &
xcompmgr -cC &

# Wallpaper
# sleep 1.1s && feh --bg-fill /media/Wallpaper/Beauty\ Wallpaper/1920x1200\ -\ 17\ inch.jpg &
sleep 1.1s && feh --bg-fill /media/Wallpaper/12-09/1920x1080\ \(2\).jpg &

# Window Manager
exec openbox-session
