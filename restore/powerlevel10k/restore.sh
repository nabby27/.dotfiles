# !/bin/bash

# Add powerlevel10k to zsh (Already done in config files)
# echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc

# Apply symlinks
rm -rf ~/.p10k.zsh
ln -s ~/.dotfiles/config/powerlevel10k/config/.p10k.zsh ~/.p10k.zsh
