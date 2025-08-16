#!/bin/bash

##
#
# theme installer?
# https://github.com/odziom91/libadwaita-theme-changer
#
##

# 1.5 scaling
gsettings set org.gnome.mutter experimental-features "['scale-monitor-framebuffer']"
gsettings set org.gnome.desktop.interface text-scaling-factor 1.5

# gtk theme
gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
gsettings set org.gnome.desktop.wm.preferences theme "Dracula"
gsettings set org.gnome.desktop.interface icon-theme "Dracula"

# change terminal to kitty
sudo update-alternatives --config x-terminal-emulator
