autoload -U compinit promptinit
compinit
promptinit

prompt walters  

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-ateliercave.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

zstyle ':completion:*' menu select
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

setopt completealiases
setopt HIST_IGNORE_DUPS
setopt correctall
setopt beep
setopt hist_ignore_space
setopt autocd

bindkey -v

DIRSTACKFILE="$HOME/.cache/zsh/dirs"
if [[ -f $DIRSTACKFILE ]] && [[ $#dirstack -eq 0 ]]; then
  dirstack=( ${(f)"$(< $DIRSTACKFILE)"} )
  [[ -d $dirstack[1] ]] && cd $dirstack[1]
fi
chpwd() {
  print -l $PWD ${(u)dirstack} >$DIRSTACKFILE
}

DIRSTACKSIZE=20

setopt autopushd pushdsilent pushdtohome

## Remove duplicate entries
setopt pushdignoredups

## This reverts the +/- operators.
setopt pushdminus

set -o vi

alias pacupg="sudo pacman -Syu"     # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacrem="sudo pacman -Rns"     # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias paclo="pacman -Qdt"           # List all packages which are orphaned
alias pacc="sudo pacman -Scc"       # Clean cache - delete all the package files in the cache
alias pd="pwd"
alias screenlock="~/bin/screenlock.sh"
alias v="vim"
alias rv="sudo rvim"
alias vb="vim -c 'norm! i#!/bin/bash'"
alias vpy="vim -c 'norm! i#!/home/zi/envs/profanity/bin/python3.5'"
alias vpy2="vim -c 'norm! i#!/homezi/envs/workproj/bin/python3.5'"
alias profanity="source ~/envs/profanity/bin/activate; cd ~/envs/profanity/"
alias workproj="source ~/envs/workproj/bin/activate; cd ~/envs/workproj/"
alias rec="ffmpeg -f x11grab -s 1920x1080 -i :0.0 -c:v libvpx -b:v 5M -crf 10 -quality realtime -y -loglevel quiet"
alias gufw="sudo gufw"
alias pingg="ping -c 3 www.google.com"
