# !/bin/bash

sudo apt-get update
sudo apt-get -y install tmux

# Apply symlinks
rm -rf ~/.tmux.conf
rm -rf ~/.tmux
ln -s ~/.dotfiles/config/tmux/.tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/config/tmux/.tmux ~/.tmux
