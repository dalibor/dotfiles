#! /bin/bash

if [ -d ~/.dotfiles ]; then
  echo "dotfiles already installed... skipping"
else
  # Setup dotfiles (https://github.com/dalibor/dotfiles)
  git clone https://github.com/dalibor/dotfiles.git ~/.dotfiles

  echo "source ~/.dotfiles/bashrc" >> ~/.bash_profile
  echo 'source ~/.dotfiles/tmux' >> ~/.tmux.conf

  ln -s ~/.dotfiles/gitconfig ~/.gitconfig
  ln -s ~/.dotfiles/gitignore ~/.gitignore
  ln -s ~/.dotfiles/gemrc ~/.gemrc
  ln -s ~/.dotfiles/irbrc ~/.irbrc
  ln -s ~/.dotfiles/ackrc ~/.ackrc
  ln -s ~/.dotfiles/screenrc ~/.screenrc
fi
