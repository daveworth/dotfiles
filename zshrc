# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER="dworth"

# Example aliases
alias dir="ls -al"
alias src="source ~/.zshrc"
alias :q="logout"
alias serve_www="ruby -run -ehttpd . -p8000"
alias gitignore=gi

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
PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
PATH="/Applications/Postgres.app/Contents/Versions/9.3/bin:$PATH"
PATH="/usr/local/heroku/bin:$PATH"

export PATH

## Golang
export GOPATH=$HOME/Documents/go
export GOROOT=/usr/local/Cellar/go/1.3.1/libexec
PATH=$PATH:$GOROOT/bin:$GOPATH/bin:

## Ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.1.2

## Python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
export WORKON_HOME=$HOME/.virtualenvs
export PIP_VIRTUAL_ENV_BASE=$WORKON_HOME
export PIP_RESPECT_VIRTUALENV=true
source /usr/local/bin/virtualenvwrapper.sh

## Node and JS
export COFFEELINT_CONFIG=$HOME/.coffeelint.json
export NODE_PATH=/usr/local/lib/node_modules

## ALL the editors
VISUAL=vim
EDITOR=vim
GIT_EDITOR=vim
export EDITOR
export VISUAL
export GIT_EDITOR

#XXX interesting plugins for further investigation:
#  git-extras, ssh-agent virtualenvwrapper
plugins=(git bundler chruby jira vi-mode virtualenv gitignore pip)

source $ZSH/oh-my-zsh.sh
cd . # lame hack to trigger on-`cd` events like virtualenv hunting and chruby-auto stuff

bindkey '^R' history-incremental-search-backward
