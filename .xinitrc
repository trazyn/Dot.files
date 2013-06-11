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

python2 ~/.config/goproxy/proxy.py > /dev/null &


#eval `cat ~/.fehbg`

exec openbox-session

#exec gnome-session-cinnamon
