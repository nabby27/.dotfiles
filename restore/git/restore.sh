# !/bin/bash

# Ensure git is installed
sudo apt update
sudo apt install -y git

# Create symlinks
rm -rf ~/.gitconfig
ln -s ~/.dotfiles/config/git/.gitconfig ~/.gitconfig
