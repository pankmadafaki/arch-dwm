
#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle_frame
      
if [ ! -e $TOGGLE ]; then
    touch $TOGGLE

    xrandr --output DisplayPort-2 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --rate 164 --output DisplayPort-1 --mode 1920x1080 --pos 0x0 --rotate normal --rate 143 --output DisplayPort-0 --off --output HDMI-A-0 --off && nitrogen --restore && picom --experimental-backends
else
    rm $TOGGLE
    xrandr --output DisplayPort-2 --primary --mode 2560x1440 --pos 1920x0 --rotate normal --rate 164 --output DisplayPort-1 --off --output DisplayPort-0 --off --output HDMI-A-0 --off && nitrogen --restore
    picom
fi
