#!/bin/sh

DOTFILE_ROOT=~/.dotfiles

for DIR in "vim"; do
  TARGET=~/.$DIR
  if [[ ! -e $TARGET ]]; then
    ln -s $DOTFILE_ROOT/$DIR $TARGET
  else
    echo Directory $TARGET exists
  fi
done

for FILE in "ackrc" "tmux.conf" "zshrc"; do
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
