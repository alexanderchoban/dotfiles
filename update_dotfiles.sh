#!/bin/bash

declare -a files=( 
    ".zshrc" 
    ".vimrc"
    ".Xresources"
    ".config/picom/picom.conf" 
    ".config/lemonbar/start.sh" 
    ".config/bspwm/bspwmrc"
    ".config/kitty/kitty.conf"
    ".config/kitty/theme.conf"
    ".config/rofi/config.rasi"
    ".config/ranger/rc.conf"
    ".config/sxhkd/sxhkdrc"
)

for i in "${files[@]}"
do
    rm  ~/code/dotfiles/dotfiles/${i}
    cp ~/${i} ~/code/dotfiles/dotfiles/${i}
done
