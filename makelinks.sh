#!/bin/sh
for x in \
  bash_profile bashrc \
  zlogin zlogout zprofile zshenv zshrc \
  nanorc irbrc rdebugrc gitconfig screenrc
do ln -sf rc/$x ~/.$x
done
