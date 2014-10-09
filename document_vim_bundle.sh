#!/bin/sh

DOTFILES_PATH=~/.dotfiles
BUNDLE_TRACKING_FILE=$DOTFILES_PATH/vim/current_bundles

rm $BUNDLE_TRACKING_FILE
BUNDLE_PATH=$DOTFILES_PATH/vim/bundle

for BUNDLE in `ls $BUNDLE_PATH`; do
  pushd $BUNDLE_PATH/$BUNDLE > /dev/null
  GIT_ORIGIN=`git remote -v | grep origin | head -n 1 | awk '{print $2}'`
  echo $GIT_ORIGIN >> $BUNDLE_TRACKING_FILE
  popd > /dev/null
done
