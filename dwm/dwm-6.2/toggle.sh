#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle
usermodmap=$HOME/.Xmodmap
      
if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    setxkbmap us altgr-intl && xmodmap $usermodmap
else
    rm $TOGGLE
    setxkbmap us && xmodmap $usermodmap
fi

