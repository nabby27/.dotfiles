# !/bin/bash

sudo apt install -y gnome-tweaks

rm -rf ~/.local/share/fonts
ln -s ~/.dotfiles/config/system/fonts ~/.local/share/fonts

fc-cache -f -v

gsettings set org.gnome.desktop.interface font-name 'JetBrainsMono Nerd Font 11'
gsettings set org.gnome.desktop.interface document-font-name 'JetBrainsMono Nerd Font 11'
gsettings set org.gnome.desktop.interface monospace-font-name 'JetBrainsMono Nerd Font 13'
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'JetBrainsMono Nerd Font Bold 11'
