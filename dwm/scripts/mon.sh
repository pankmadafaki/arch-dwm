#!/bin/sh
xrandr --output DisplayPort-0 --primary --mode 2560x1440 --pos 0x0 --rotate normal --rate 165 --output DisplayPort-1 --off --output DisplayPort-2 --off --output HDMI-A-0 --off && picom --experimental-backend
