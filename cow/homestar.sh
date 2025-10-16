#!/bin/bash

fortune_output=$(fortune -s)

uwuifyy -a 0 -s 0.1 -t "$fortune_output" | cowsay -f ~/cow/homestar-legless.cow | lolcat -a -s 500
