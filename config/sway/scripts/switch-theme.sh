#!/bin/bash

# Set Waybar theme
cd $HOME/.config/waybar
cp "./$2.css" ./style.css

# Set Kitty theme
cd $HOME/.config/kitty
cp "./$2.conf" ./color-scheme.conf
kitten @ --to unix:/tmp/mykitty set-colors -a ./color-scheme.conf

# Set Codium theme
cd $HOME/.config/sway/scripts

if [ $2 == "tord" ]; then
    ./code-theme.sh Scoria
elif [ $2 == "matrix" ]; then
    ./code-theme.sh Matrixish
fi

# Set GTK theme
cd "$HOME/.themes/skewaita/source/templates"

if [ $2 == "tord" ]; then
    ./use_scheme.sh ./tord-scheme.sh
elif [ $2 == "matrix" ]; then
    ./use_scheme.sh ./colorscheme-dark-matrix.sh
fi

cd ..
./compile.sh dark

# Set xpad theme
cd $HOME/.config/xpad
cp "./$2" ./default-style

xpad -q
xpad -h >/dev/null 2>&1 & # Run in background

# Set sway colours
cd "$HOME/.config/sway"
./scripts/sway-theme.sh "./$2.conf" "./base.conf" "./config"

swaymsg reload

# Set bg
pgrep swaybg >/dev/null 2>&1 && killall swaybg
swaybg -i "$HOME/Pictures/wallpaperz/$1" -m fill
