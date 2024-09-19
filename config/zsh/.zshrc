# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Run TMUX on startup
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

fpath+=${ZDOTDIR:-~}/.zsh_functions
source ~/.zsh/completion.zsh

autoload -Uz compinit

# Cache completion if nothing changed - faster startup time
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Enhanced form of menu completion called `menu selection'
zmodload -i zsh/complist

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

source ~/.zsh/history.zsh

source ~/.zsh/fzf-zsh-plugin/fzf-zsh-plugin.plugin.zsh

source ~/.dotfiles/config/powerlevel10k/powerlevel10k/powerlevel10k.zsh-theme

source ~/.dotfiles/config/alacritty/alacritty/extra/completions/alacritty.bash

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Alias

alias ..="cd .."
alias ...="cd ../.."
alias ll="ls -la --color=yes"
alias ~="cd ~"

# Git
alias gs="git status -sb"
alias gpull="git pull --all --prune"
alias gpush="git push -u origin"
alias gsw="git switch"
alias gpullsub="git submodule update --force --recursive --init --remote"

# Utils
alias k='kill -9'

# Added by serverless binary installer
export PATH="$HOME/.serverless/bin:$PATH"
export PATH=$HOME/.local/bin:$PATH
