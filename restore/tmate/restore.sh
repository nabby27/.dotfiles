# !/bin/bash

sudo apt-get update
sudo apt-get -y install tmate

# Apply symlinks
rm -rf ~/.tmate.conf
ln -s ~/.dotfiles/config/tmate/.tmate.conf ~/.tmate.conf
