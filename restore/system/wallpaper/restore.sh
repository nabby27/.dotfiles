# !/bin/bash

WALLPAPER_PATH="/home/$USER/.dotfiles/config/system/wallpaper/wallpaper.jpg"

gsettings set org.gnome.desktop.background picture-uri "$WALLPAPER_PATH" 
gsettings set org.gnome.desktop.background picture-uri-dark "$WALLPAPER_PATH"

