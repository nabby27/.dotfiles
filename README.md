# My Dotfiles

# Update submodules

```bash
git submodule update --force --recursive --init --remote
```

# Auth in Copilot

I'm using the plugin [copilot.lua](https://github.com/zbirenbaum/copilot.lua) to use GitHub Copilot, the auth in this plugin (as they explain very well in their documentation) is running the command `:Copilot auth` 

# How To restore

1. Setup ssh keys
    1. Download ssh keys and put it on `~/.ssh/`
    2. Set permissions
        ```bash
        sudo chmod 400 ~/.ssh/*
        sudo chmod 755 ~/.ssh/*.pub ~/.ssh/*.pem
        sudo chmod 600 ~/.ssh/know_hosts ~/.ssh/config
        ```
2. Download this repo `git clone --recurse-submodules git@github.com:nabby27/.dotfiles.git ~/.dotfiles`
3. run restore script `sh ~/.dotfiles/restore/init.sh`
4. Update TMUX plugins: open shell and type: `<Ctrl><Space><Shift>U`
5. Reboot
