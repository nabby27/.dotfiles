# !/bin/bash

sh ~/.dotfiles/restore/zsh/restore.sh </dev/null
sh ~/.dotfiles/restore/bash/restore.sh </dev/null

sh ~/.dotfiles/restore/git/restore.sh </dev/null
sh ~/.dotfiles/restore/ssh/restore.sh </dev/null
sh ~/.dotfiles/restore/system/restore.sh </dev/null

sh ~/.dotfiles/restore/alacritty/restore.sh </dev/null
sh ~/.dotfiles/restore/docker/restore.sh </dev/null
sh ~/.dotfiles/restore/nvm/restore.sh </dev/null
sh ~/.dotfiles/restore/nvim/restore.sh </dev/null
sh ~/.dotfiles/restore/powerlevel10k/restore.sh </dev/null
sh ~/.dotfiles/restore/tmate/restore.sh </dev/null
sh ~/.dotfiles/restore/tmux/restore.sh </dev/null
