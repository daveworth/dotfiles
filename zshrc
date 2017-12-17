# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="agnoster"
DEFAULT_USER="dworth"

fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

# Aliases
alias dir="ls -al"
alias src="source ~/.zshrc"
#alias serve_www="ruby -run -ehttpd . -p8000"
#alias gitignore=gi
alias jq='jq -C'
alias gsp='git smart-pull'
#alias gp='git put'
#alias grm='git rebase -i master'
alias prune_merged_branches='git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d'
alias fix_docker='docker-machine start; VBoxManage controlvm default poweroff soft && VBoxManage modifyvm default --natdnshostresolver1 on && VBoxManage startvm default --type headless'
alias hl=humanlog
#alias dcr='docker-compose run'
#alias gtv="go test ./..."
#alias gtv="go test -v ./... 2>&1 | hl"
alias run_kafka-manager="docker run -it --rm  -p 9000:9000 -e ZK_HOSTS=localhost:32800 -e APPLICATION_SECRET=letmein sheepkiller/kafka-manager"
alias run_docker-registry-frontend="docker run -d -e ENV_DOCKER_REGISTRY_HOST=docker.internal.digitalocean.com -e ENV_DOCKER_REGISTRY_PORT=5000 -p 8080:80 konradkleine/docker-registry-frontend:v2"

# punting on launchctl since ES has hard security things
#alias start_es='elasticsearch --config=/usr/local/opt/elasticsearch/config/elasticsearch.yml'

# shvim
alias :q="logout"
alias :sp="tmux splitw"
alias :vs="tmux splitw -h"

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
PATH=~/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH     # standard path
PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH" # postgress.app
#PATH="/usr/local/heroku/bin:$PATH"                                # heroku tooling
PATH="$PATH:/Users/dworth/.cargo/bin" # cargo

eval "$(direnv hook zsh)"

## Golang
export GOPATH=$HOME/Documents/go
export GOROOT=/usr/local/Cellar/go/1.9.2/libexec
PATH=$PATH:$GOROOT/bin:$GOPATH/bin:

## Ruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
chruby ruby-2.3.1

## Python
#setup_python() {
#  export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
#  export WORKON_HOME=$HOME/.virtualenvs
#  export PIP_VIRTUAL_ENV_BASE=$WORKON_HOME
#  #export PIP_RESPECT_VIRTUALENV=true
#  export PIP_REQUIRE_VIRTUALENV=true
#  source /usr/local/bin/virtualenvwrapper.sh
#}

## Node and JS
setup_js() {
  export COFFEELINT_CONFIG=$HOME/.coffeelint.json
  export NODE_PATH=/usr/local/lib/node_modules
  export NVM_DIR="/Users/dworth/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
  nvm use v6.3.0
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
}

## Perl
#setup_perl() {
#  PATH="/Users/dworth/perl5/bin${PATH+:}${PATH}"; export PATH;
#  PERL5LIB="/Users/dworth/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
#  PERL_LOCAL_LIB_ROOT="/Users/dworth/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
#  PERL_MB_OPT="--install_base \"/Users/dworth/perl5\""; export PERL_MB_OPT;
#  PERL_MM_OPT="INSTALL_BASE=/Users/dworth/perl5"; export PERL_MM_OPT;
#}

# Haskell
#setup_haskell() {
#  PATH="${HOME}/.cabal/bin:$PATH"
#  Add GHC 7.10.1 to the PATH, via https://ghcformacosx.github.io/
#  export GHC_DOT_APP="/Users/dworth/Downloads/ghc-7.10.1.app"
#  if [ -d "$GHC_DOT_APP" ]; then
#    PATH="${HOME}/.cabal/bin:${GHC_DOT_APP}/Contents/bin:${PATH}"
#  fi
#}

# OCAML / OPAM configuration
#setup_ocaml() {
#  . /Users/dworth/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
#}


## DO Project stuff
DB_USER='dodns'

#DOCKER_ENV_PATH="$HOME/tmp/.docker.env"
#if test `find "$DOCKER_ENV_PATH" -mmin +30`
#then
#  echo "Generating Docker ENV"
#  $(docker-machine env > $DOCKER_ENV_PATH)
#fi
#source $DOCKER_ENV_PATH
#eval $(docker-machine env)
#export DOCKER_IP=$(docker-machine ip)

## ALL the editors
export VISUAL=vim
export EDITOR=vim
export GIT_EDITOR=vim

export PATH

# TODO interesting plugins for further investigation:
#  git-extras, ssh-agent
#plugins=(git bundler chruby jira vi-mode virtualenv virtualenvwrapper gitignore pip docker)
#plugins=(git bundler chruby vi-mode docker)
#plugins=(vi-mode zsh-autosuggestions)
plugins=(vi-mode)

source $ZSH/oh-my-zsh.sh
#cd . # lame hack to trigger on-`cd` events like virtualenv hunting and chruby-auto stuff

#bindkey '^R' history-incremental-search-backward

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(fasd --init auto)"
eval "$(hub alias -s)"
