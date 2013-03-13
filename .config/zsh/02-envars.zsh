## ZSH Environment Variables

## COLORS
# New color definitions
local b=$(printf "\e[1m")
local e=$(printf "\e[m")

# Standard colors
for n in {0..7}; do
  local c${n}=$(printf "\e[38;5;${n}m")
done
for n in {8..15}; do
  local c${n}=$(printf "\e[38;5;0${n}m\e[1m")
done

# But I need moar
local c20=$(printf "\e[m")
local c21=$(printf "\e[38;5;245m")
local c22=$(printf "\e[38;5;250m")
local c23=$(printf "\e[38;5;242m")
local c24=$(printf "\e[38;5;197m")
local c25=$(printf "\e[38;5;225m")
local c26=$(printf "\e[38;5;240m")
local c27=$(printf "\e[38;5;242m")
local c28=$(printf "\e[38;5;244m")
local c29=$(printf "\e[38;5;162m")
local c30=$(printf "\e[1m")
local c31=$(printf "\e[38;5;208m\e[1m")
local c32=$(printf "\e[38;5;142m\e[1m")
local c33=$(printf "\e[38;5;196m\e[1m")

export HISTSIZE=1000
export SAVEHIST=1000
export HISTFILE=~/.config/zsh/history
export DISPLAY=:0

export SHELL='/bin/zsh'

export EDITOR='vim'

export PATH="/usr/local/bin:\
/usr/bin:\
/bin:\
/usr/local/sbin:\
/usr/sbin:\
/sbin:"
# /opt/java/jre/bin:\
# /usr/bin/site_perl:\
# /usr/bin/vendor_perl:\
# /usr/bin/core_perl:\
# /home/crshd/bin:"

export WINEPREFIX='/home/tnrazy/.wineHQ/'
# export WINEARCH=win32

# Less
# export LESSOPEN='| /usr/bin/highlight -0 ansi %s'
export LESS=' -R'

export XMODIFIERS=@im=fcitx
export GTK_IM_MODULE=xim
export QT_IM_MODULE=xim
# vim: set ft=zsh
