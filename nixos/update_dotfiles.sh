#!/bin/bash

declare -a files=( 
    ".config/ghostty/config"
    ".config/hypr/hyprland.conf"
)

for i in "${files[@]}"
do
    rm  ~/code/dotfiles/nixos/dotfiles/${i}
    cp ~/${i} ~/code/dotfiles/nixos/dotfiles/${i}
done

cp /etc/nixos/configuration.nix ~/code/dotfiles/nixos/dotfiles/