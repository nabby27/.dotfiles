# !/bin/bash

sudo apt update
sudo apt install -y zsh

# Install dependencies
sudo apt install -y fzf exa bat chafa exiftool

# Use zsh as default shell
chsh -s $(which zsh)

# Apply symlinks
rm -rf ~/.zshrc
rm -rf ~/.zsh
rm -rf ~/.zsh_functions
ln -s ~/.dotfiles/config/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/config/zsh/.zsh ~/.zsh
ln -s ~/.dotfiles/config/zsh/.zsh_functions ~/.zsh_functions

export PATH=$PATH:~/.dotfiles/config/zsh/.zsh/fzf-zsh-plugin/bin
