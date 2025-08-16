#!/bin/bash

declare -a files=(
    ".zshrc"
    ".config/ghostty/config"
    ".config/nvim/init.lua"
    ".config/nvim/lua/plugins.lua"
    ".config/nvim/lua/settings.lua"
    ".config/nvim/lua/keymaps.lua"
    ".config/nvim/lua/colors.lua"
)

for i in "${files[@]}"
do
    rm  ~/code/dotfiles/ubuntu/dotfiles/${i}
    cp ~/${i} ~/code/dotfiles/ubuntu/dotfiles/${i}
done

rm -r ~/code/dotfiles/ubuntu/dotfiles/.config/regolith3
cp -r ~/.config/regolith3 ~/code/dotfiles/ubuntu/dotfiles/.config/
