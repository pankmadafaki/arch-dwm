
#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle_conda
      
if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    mullvad disconnect
    dunstify "Mullvad" "Disconnected from VPN" --icon=/home/lr0n/dwm/dwm-6.2/icon.svg
    
else
    rm $TOGGLE
    mullvad connect
    dunstify "Mullvad" "Connected to VPN" --icon=/home/lr0n/dwm/dwm-6.2/icon.svg
    
fi
