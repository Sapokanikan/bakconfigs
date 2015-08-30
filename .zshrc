autoload -U compinit promptinit
compinit
promptinit

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/base16-monokai.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

# This will set the prompt
prompt walters  

# Arrow key style
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

# Freeze or unfreeze terminal
ttyctl -f

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
alias screenlock="~/bin/screenlock.sh"
alias v="vim"
