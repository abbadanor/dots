#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.emacs.d/bin/:$HOME/.local/bin/:$PATH"

set -o vi

alias v="$EDITOR"
alias p="pacman"
alias ka="killall"
alias kys="poweroff"
alias ls="exa --color=always --group-directories-first"
alias la="exa -a --color=always --group-directories-first"
alias cfb="$EDITOR ~/.config/bspwm/bspwmrc"
alias cfs="$EDITOR ~/.config/sxhkd/sxhkdrc"
alias cfx="$EDITOR ~/.xinitrc"
alias gcl="git clone"
alias lf="lfub"

# lists explicitly installed packages
alias listinstalled="expac -H M '%011m\t%-20n\t%10d' \$(comm -23 <(pacman -Qqen | sort) <({ pacman -Qqg base-devel; expac -l '\n' '%E' base; } | sort -u)) | sort -n"

alias cp="cp -i"
alias mv="mv -i"
alias rm="rm -i"

alias df="df -h"
alias du="du -h"
alias free="free -m"

for cmd in pacman sv reboot poweroff mount umount; do
	alias $cmd="sudo $cmd";
done; unset cmd
