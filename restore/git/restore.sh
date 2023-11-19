# !/bin/bash

# Ensure git is installed
sudo apt udpate
sudo apt install -y git

# Create symlinks
rm -rf ~/.gitconfig
ln -s ~/.dotfiles/config/git/.gitconfig ~/.gitconfig
