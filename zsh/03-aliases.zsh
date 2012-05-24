#==============================================================
#        __       __       __       __       __
#       / /\     / /\     /_/\     / /\     / /\
#      / / |_   / / /\   _\ \ \   / /  \   / / /
#     /_/  |/\ /_/ /  \ /_/\/  \ /_/ / /_ /_/ / /\
#  __ \_\/|  / \ \  / / \ \  /\/ \ \  __/ \ \ \/ /
# /_/\  |_| /   \ \/ /   \ \ \    \ \ \    \ \  /
# \_\/  \_\/     \_\/     \_\/     \_\/     \_\/
#
# A L I A S E S  F O R  Z S H
#

# makepkg
alias mkp='makepkg -si'
alias mks='makepkg --source'
alias mkg='makepkg -g'

# Sudo
alias s='sudo'

# CD
alias cd..='cd ..'
alias .='pwd'
alias ..='cd ..'
alias ...='cd ../..'
alias ~='cd ~'

# RM
alias rm='rm -r'
alias rmf='rm -rf'

# CP
alias cp='cp -r'

# LS
alias l='ls -Xp --color=auto'
alias ls='ls -Xp --color=auto'
alias ll='ls -Hal --color=auto'

# MKDIR
alias mk='mkdir -p'
alias mkdir='mkdir -p'

# Various
alias cls='clear'
alias h='history'
alias wget='wget -c'

# Dictionary
alias dict='bash ~/.config/script/dict.sh'

# Mounting
# -

# Ping
alias pl='ping -c 1 192.168.1.1 | tail -3'
alias pg='ping -c 1 google.com | tail -3'

# Fun with sed
alias df='df -h | grep sd |\
	sed -e "s_/dev/sda[1-9]_\x1b[34m&\x1b[0m_" |\
	sed -e "s_/dev/sd[b-z][1-9]_\x1b[33m&\x1b[0m_" |\
	sed -e "s_[,0-9]*[MG]_\x1b[36m&\x1b[0m_" |\
	sed -e "s_[0-9]*%_\x1b[32m&\x1b[0m_" |\
	sed -e "s_9[0-9]%_\x1b[31m&\x1b[0m_" |\
	sed -e "s_/mnt/[-_A-Za-z0-9]*_\x1b[34;1m&\x1b[0m_"'

alias duch='du -ch | grep insgesamt |\
	sed -e "s_[0-9]*,[0-9]*[B|G|K|M|T]_\x1b[32m&\x1b[0m_"'
