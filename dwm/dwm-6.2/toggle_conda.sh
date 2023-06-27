
#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle_conda
      
if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    sed -i 's/starship_no_conda.toml/starship.toml/g' /home/lr0n/.config/fish/config.fish
    sed -i 's/#eval/eval/g' /home/lr0n/.config/fish/config.fish
    dunstify "Anaconda" "Conda environments enabled"
else
    rm $TOGGLE
    sed -i 's/starship.toml/starship_no_conda.toml/g' /home/lr0n/.config/fish/config.fish
    sed -i 's/eval/#eval/g' /home/lr0n/.config/fish/config.fish
    dunstify "Anaconda" "Conda environments disabled"
    
fi
