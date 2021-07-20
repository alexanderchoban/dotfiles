#!/bin/bash

declare -a files=( 
    ".zshrc" 
    ".config/picom/picom.conf" 
    ".config/lemonbar/start.sh" 
    ".config/bspwm/bspwmrc"
    ".vimrc"
    ".config/kitty/kitty.conf"
    ".config/kitty/theme.conf"
    ".Xresources"
    ".config/rofi/config.rasi"
    ".config/ranger/rc.conf"
    ".config/sxhkd/sxhkdrc"
)


for i in "${files[@]}"
do
    rm  ~/code/dotfiles/${i}
    cp ~/${i} ~/code/dotfiles/${i}
done
