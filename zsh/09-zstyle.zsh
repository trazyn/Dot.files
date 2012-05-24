#!/bin/zsh

# :completion:<func>:<completer>:<command>:<argument>:<tag>
# Expansion options
zstyle ':completion:*' completer _complete _prefix
zstyle ':completion::prefix-1:*' completer _complete
zstyle ':completion:incremental:*' completer _complete _correct
zstyle ':completion:predict:*' completer _complete

# Completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zsh/cache/$HOST

# Expand partial paths
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'

zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh/cache

# Include non-hidden directories in globbed file completions
# for certain commands
zstyle ':completion::complete:*' '\'

#  tag-order 'globbed-files directories' all-files 
zstyle ':completion::complete:*:tar:directories' file-patterns '*~.*(-/)'

# Don't complete backup files as executables
zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'
zstyle ':completion:*:-command-:*:'    verbose false

# Separate matches into groups
zstyle ':completion:*:matches' group 'yes' # FIXME whats the diff to the line below ?
zstyle ':completion:*' group-name ''

# Describe each match group.
zstyle ':completion:*:descriptions' format "%B---- %d%b"
#zstyle ':completion:*:descriptions' format "%S%d:%s" # reverse video

# Messages/warnings format
zstyle ':completion:*:messages' format '%B%U---- %d%u%b' 
zstyle ':completion:*:warnings' format '%B%U---- no match for: %d%u%b'
 
# Describe options in full
zstyle ':completion:*:options' description 'yes'
zstyle ':completion:*:options' auto-description '%d'

# complete manual by their section
zstyle ':completion:*:manuals'    separate-sections true
zstyle ':completion:*:manuals.*'  insert-sections   true

zstyle ':completion:*:history-words' stop verbose
zstyle ':completion:*:history-words' remove-all-dups yes
zstyle ':completion:*:history-words' list false

zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# Remove uninteresting users
# cat /etc/passwd | awk -F : '{print $1}' | sort > users
zstyle ':completion:*:*:*:users' ignored-patterns \
    abrt adm apache avahi avahi-autoipd bin daemon dbus ftp games \
    gdm gopher haldaemon halt lp mail mailnull nfsnobody \
    nm-openconnect nobody nscd ntp openvpn operator pulse rpc \
    rpcuser rtkit saslauth shutdown smmsp smolt sshd sync tcpdump \
    uucp vcsa

# Remove uninteresting hosts
zstyle ':completion:*:*:*:hosts-host' ignored-patterns \
   '*.*' loopback localhost
zstyle ':completion:*:*:*:hosts-domain' ignored-patterns \
   '<->.<->.<->.<->' '^*.*' '*@*'
zstyle ':completion:*:*:*:hosts-ipaddr' ignored-patterns \
   '^<->.<->.<->.<->' '127.0.0.<->'

zstyle -e ':completion:*:*:((l|nc|)ftp|ssh|scp|ping):*' hosts 'reply=(
          ${=${${(f)"$(cat {/etc/ssh_,~/.ssh/known_}hosts(|2)(N) \
                          /dev/null)"}%%[# ]*}//,/ }
          )'

#WHAT DOES THIS inserted into the above zstyle??
#${${${(M)${(s:# :)${(zj:# :)${(Lf)"$([[ -f ~/.ssh/config ]] && <~/.ssh/config)"}%%\#*}}##host(|name) *}#host(|name) }/\*}

#SSH Completion:
zstyle ':completion:*:ssh:*' group-order \
    hosts-domain hosts-host users hosts-ipaddr



# Enable menus!

zstyle ':completion:*:correct:*'       insert-unambiguous true             # start menu completion only if it could find no unambiguous initial string
zstyle ':completion:*:man:*'      menu yes select
zstyle ':completion:*:history-words'   menu yes                            # activate menu
zstyle ':completion:*:*:cd:*:directory-stack' menu yes select              # complete 'cd -<tab>' with menu
zstyle ':completion:*' menu select=5

zstyle ':completion:*:*:sudo:*' command-path /sbin /usr/sbin /usr/local/sbin $path # completion for root 
zstyle ':completion::*:-tilde-:*:*' group-order named-directories users
