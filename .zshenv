typeset -U path
path=(~/bin /other/things/in/path $path)

export HISTSIZE=2000
export HISTFILE="$HOME/.zhist"
export SAVEHIST=$HISTSIZE
export EDITOR="vim"
export VISUAL="vim"
export SUDO_EDITOR="rvim"
