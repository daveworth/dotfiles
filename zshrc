# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER=$(whoami)

fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

# Aliases
alias dir="ls -al"
alias src="source ~/.zshrc"
# alias serve_www="ruby -run -ehttpd . -p8000"
alias jq='jq -C'
alias gsp='git smart-pull'
alias prune_merged_branches='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias hl=humanlog

alias dc=docker-compose
alias be='bundle exec'

alias c='a -e code'
alias v='a -e vim'

# shvim
alias :q="logout"
# alias :sp="tmux splitw"
# alias :vs="tmux splitw -h"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"
#
# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# Customize to your needs...
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH     # standard path

eval "$(direnv hook zsh)"

## Golang
export GOPATH=$HOME/Documents/go
export GOROOT=/usr/local/opt/go/libexec
PATH=$PATH:$GOROOT/bin:$GOPATH/bin:

## Ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.5.5

## Python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUAL_ENV_BASE=$WORKON_HOME
export PIP_REQUIRE_VIRTUALENV=true
[ -f /usr/local/bin/virtualenvwrapper.sh ] && source /usr/local/bin/virtualenvwrapper.sh

## ALL the editors
export VISUAL=vim
export EDITOR=vim
export GIT_EDITOR=vim
export BUNDLER_EDITOR=code

export PATH

plugins=(vi-mode)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ]

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# yoinked from https://github.com/junegunn/fzf/wiki/examples#git
fbr() {
  local branches branch
  branches=$(git branch -vv) &&
  branch=$(echo "$branches" | fzf +m) &&
  git checkout $(echo "$branch" | awk '{print $1}' | sed "s/.* //")
}

eval "$(fasd --init auto)"
eval "$(hub alias -s)"

[ -f ~/.dotfiles_local/zshrc ] && source ~/.dotfiles_local/zshrc
