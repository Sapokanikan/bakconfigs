#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi

alias pacupg="sudo pacman -Syu"     # Synchronize with repositories and then upgrade packages that are out of date on the local system.
alias pacrem="sudo pacman -Rns"     # Remove the specified package(s), its configuration(s) and unneeded dependencies
alias paclo="pacman -Qdt"           # List all packages which are orphaned
alias pacc="sudo pacman -Scc"       # Clean cache - delete all the package files in the cache
alias screenlock="~/bin/screenlock.sh"

export EDITOR="vim"
export VISUAL="vim"
export SUDO_EDITOR="rvim"
