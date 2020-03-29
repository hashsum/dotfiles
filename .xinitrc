#!/bin/sh

# /etc/X11/xinit/xinitrc
#
# global xinitrc file, used by all X sessions started by xinit (startx)

# swap alt and win
setxkbmap -option altwin:swap_alt_win

# Russian layout
setxkbmap -layout us,ru -option grp:alt_shift_toggle

# invoke global X session script
#. /etc/X11/Xsession

exec i3
