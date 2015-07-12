#!/bin/sh

DOTFILE_ROOT=~/.dotfiles

pushd ~ > /dev/null

echo "Brew install important things:"
echo "$ brew install ruby-install chruby git vim"

echo "Don't forget to install puppet-lint, flake8, and coffeelint as appropriate:"
echo " npm install -g coffeelint"
echo " gem install puppet-lint"
echo " gem install tmuxinator"
echo " pip install flake8"

# dot-directories
for DIR in "vim" "tmuxinator"; do
  TARGET=~/.$DIR
  if [[ ! -e $TARGET ]]; then
    ln -s $DOTFILE_ROOT/$DIR $TARGET
  else
    echo Directory $TARGET exists
  fi
done


# dot-files
for FILE in "ackrc" "tmux.conf" "zshrc" "gitconfig" "irbrc" "gemrc" \
  "coffeelint.json"; do
  TARGET=~/.$FILE
  if [[ ! -e $TARGET ]]; then
    ln -s $DOTFILE_ROOT/$FILE $TARGET
  else
    echo File $TARGET exists
  fi
done


# ~/config-files
CONFIG_DIR=~/config
if [[ ! -d ~/config ]]; then
  mkdir $CONFIG_DIR
fi
for CONFIG_FILE in "flake8"; do
  ln -s $DOTFILE_ROOT/$CONFIG_FILE $CONFIG_DIR/$CONFIG_FILE
done

# setup Vim
TARGET=~/.vimrc
if [[ ! -e $TARGET ]]; then
  ln -s ~/.vim/vimrc $TARGET
else
  echo File $TARGET exists
fi
mkdir ~/.vim-tmp

## install Vim bundles
VIM_ROOT=$DOTFILE_ROOT/vim
BUNDLE_ROOT=$VIM_ROOT/bundle
if [[ ! -d $BUNDLE_ROOT ]]; then
  mkdir $BUNDLE_ROOT
fi
pushd $BUNDLE_ROOT >> /dev/null
while read BUNDLE_URL; do
  BUNDLE_NAME=`echo $BUNDLE_URL | sed 's/.*\///' | sed 's/\.git$//'`
  if [[ ! -d $BUNDLE_NAME ]]; then
    echo $BUNDLE_NAME
    echo $BUNDLE_URL
    git clone $BUNDLE_URL
  else
    echo "$BUNDLE_NAME is already in the bundle"
  fi
done < $VIM_ROOT/current_bundles

popd > /dev/null
