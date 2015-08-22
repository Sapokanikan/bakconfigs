#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

[ ! -s ~/.mpd/pid ] && mpd

[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
