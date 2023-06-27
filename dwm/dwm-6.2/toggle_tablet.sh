
#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle_conda
      
if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    xsetwacom set 'Wacom One by Wacom M Pen stylus' MapToOutput DisplayPort-1
    xsetwacom set 'Wacom One by Wacom M Pen stylus' Area 0 0 21600 12150
    xsetwacom set 'Wacom One by Wacom M Pen stylus' Rotate half
    dunstify "Wacom" "Tablet mapped to left screen"
else
    rm $TOGGLE
    xsetwacom set 'Wacom One by Wacom M Pen stylus' MapToOutput DisplayPort-2
    xsetwacom set 'Wacom One by Wacom M Pen stylus' Area 0 0 21600 12150
    xsetwacom set 'Wacom One by Wacom M Pen stylus' Rotate half
    dunstify "Wacom" "Tablet mapped to right screen"
fi
