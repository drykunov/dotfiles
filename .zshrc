## Oh-my-zsh setup
export ZSH="/Users/ruarud2/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git osx zsh-completions docker docker-compose)

fpath=(#{HOMEBREW_PREFIX}/share/zsh-completions $fpath)

source $ZSH/oh-my-zsh.sh

# User configuration

export LC_ALL=en_US.UTF-8

