# !/bin/bash

sudo add-apt-repository -y ppa:neovim-ppa/stable
sudo add-apt-repository -y ppa:neovim-ppa/unstable
sudo apt update

sudo apt -y install python3-neovim
sudo apt-get install -y software-properties-common
sudo apt install -y neovim
sudo apt-get -y install python3-dev python3-pip

# Add nvim as alternative to other editors
# sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
# sudo update-alternatives --config vi
# sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
# sudo update-alternatives --config vim
# sudo update-alternatives --install /usr/bin/editor editor /usr/bin/nvim 60
# sudo update-alternatives --config editor

# Install requirements for plugins
sudo apt install -y ripgrep \
    fzf curl jq tidy

nvm install 20
nvm use 20

# Apply symlinks
rm -rf ~/.config/nvim/lua/custom
rm -rf ~/.config/nvim
ln -s ~/.dotfiles/config/nvim/nvchad ~/.config/nvim
ln -s ~/.dotfiles/config/nvim/custom ~/.config/nvim/lua/custom
