#!/bin/sh
for x in \
  bash_profile bashrc \
  zlogin zlogout zprofile zshenv zshrc \
  nanorc irbrc rdebugrc
do ln -sf rc/$x ~/.$x
done
