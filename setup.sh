#!/bin/sh

DOTFILE_ROOT=~/.dotfiles

pushd ~ > /dev/null

for DIR in "vim"; do
  TARGET=~/.$DIR
  if [[ ! -e $TARGET ]]; then
    ln -s $DOTFILE_ROOT/$DIR $TARGET
  else
    echo Directory $TARGET exists
  fi
done

for FILE in "ackrc" "tmux.conf" "zshrc" "gitconfig" "irbrc" "gemrc"; do
  TARGET=~/.$FILE
  if [[ ! -e $TARGET ]]; then
    ln -s $DOTFILE_ROOT/$FILE $TARGET
  else
    echo File $TARGET exists
  fi
done

TARGET=~/.vimrc
if [[ ! -e $TARGET ]]; then
  ln -s ~/.vim/vimrc $TARGET
else
  echo File $TARGET exists
fi
mkdir ~/.vim-tmp

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
