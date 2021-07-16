#!/bin/bash

declare -a files=( 
    ".zshrc" 
    ".config/picom/picom.conf" 
    ".config/lemonbar/start.sh" 
    ".config/bspwm/bspwmrc"
    ".vimrc"
    ".config/terminator/config"
    ".Xresources"
)


for i in "${files[@]}"
do
    rm  ~/code/dotfiles/${i}
    cp ~/${i} ~/code/dotfiles/${i}
done
