
#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle_conda
      
if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    sed -i 's/opacity: 0.65/opacity: 1.0/g' /home/lr0n/.config/alacritty/alacritty.yml
    echo "conda"
else
    rm $TOGGLE
    sed -i 's/opacity: 1.0/opacity: 0.65/g' /home/lr0n/.config/alacritty/alacritty.yml
    echo "no conda"
fi
