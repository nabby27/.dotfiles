# Update Alacritty

```bash
cd ~/.dotfiles
git submodule update --force --recursive --init --remote config/alacritty/alacritty
cd ~/.dotfiles/config/alacritty/alacritty
cargo build --release
```

# Change Alacritty configuration

1. Update yml file
2. Remove toml configuration `rm -rf ~/.dotfiles/config/alacritty/config/alacritty.toml`
3. Run command `alacritty migrate`

