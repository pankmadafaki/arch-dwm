
#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle_mon
      
if [ ! -e $TOGGLE ]; then
    touch $TOGGLE

    xrandr --output DisplayPort-2 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --output DisplayPort-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-0 --off --output HDMI-A-0 --off && picom 
else
    rm $TOGGLE
    xrandr --output DisplayPort-2 --off --output DisplayPort-1 --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-0 --off --output HDMI-A-0 --mode 1920x1080 --pos 1920x0 --rotate normal --rate 60
fi
