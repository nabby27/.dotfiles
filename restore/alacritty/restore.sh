# !/bin/bash

# Ensure rust is installed
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env
rustup override set stable
rustup update stable

# Install dependencies
sudo apt update
sudo apt -y install scdoc cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3

# Build Alacritty
cd ~/.dotfiles/config/alacritty/alacritty
cargo build --release

# Ensure terminfo works correctly
infocmp alacritty
sudo tic -xe alacritty,alacritty-direct ~/.dotfiles/config/alacritty/alacritty/extra/alacritty.info

# Add desktop entry
sudo rm -rf /usr/local/bin/alacritty
sudo ln -s ~/.dotfiles/config/alacritty/alacritty/target/release/alacritty /usr/local/bin/alacritty # or anywhere else in $PATH

sudo rm -rf /usr/share/pixmaps/Alacritty.svg
sudo ln -s ~/.dotfiles/config/alacritty/alacritty/extra/logo/alacritty-simple.svg /usr/share/pixmaps/Alacritty.svg

sudo desktop-file-install ~/.dotfiles/config/alacritty/alacritty/extra/linux/Alacritty.desktop
sudo update-desktop-database

# Manual page
sudo mkdir -p /usr/local/share/man/man1
sudo mkdir -p /usr/local/share/man/man5
scdoc < ~/.dotfiles/config/alacritty/alacritty/extra/man/alacritty.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty.1.gz > /dev/null
scdoc < ~/.dotfiles/config/alacritty/alacritty/extra/man/alacritty-msg.1.scd | gzip -c | sudo tee /usr/local/share/man/man1/alacritty-msg.1.gz > /dev/null
scdoc < ~/.dotfiles/config/alacritty/alacritty/extra/man/alacritty.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty.5.gz > /dev/null
scdoc < ~/.dotfiles/config/alacritty/alacritty/extra/man/alacritty-bindings.5.scd | gzip -c | sudo tee /usr/local/share/man/man5/alacritty-bindings.5.gz > /dev/null

# Shell completions (Already done in config files)
# mkdir -p ${ZDOTDIR:-~}/.zsh_functions
# echo 'fpath+=${ZDOTDIR:-~}/.zsh_functions' >> ${ZDOTDIR:-~}/.zshrc
# cp extra/completions/_alacritty ${ZDOTDIR:-~}/.zsh_functions/_alacritty

# Add as default terminal
gsettings set org.gnome.desktop.default-applications.terminal exec /usr/local/bin/alacritty
gsettings set org.gnome.desktop.default-applications.terminal exec-arg "-x"

# Create symlinks
rm -rf ~/.config/alacritty
ln -s ~/.dotfiles/config/alacritty/config ~/.config/alacritty

# pin Alacritty in the dock as first app
gsettings set org.gnome.shell favorite-apps "['Alacritty.desktop', $(gsettings get org.gnome.shell favorite-apps | sed s/^.//)"
