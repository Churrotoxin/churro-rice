#!/bin/bash

profile=$(swaymsg -t get_tree | grep -c '"app_id": "kitty"')

if [ "$profile" -eq 1 ]; then
    neofetch
elif [ "$profile" -eq 2 ]; then
    cmatrix -s
elif [ "$profile" -eq 3 ]; then
    ~/cow/homestar.sh
fi
