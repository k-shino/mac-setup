#!/bin/bash

# setup dotfile
git clone https://github.com/k-shino/dotfiles.git ~/
ln -s ./dotfiles/.vim ~/.vim
ln -s ./dotfiles/.vimrc ~/.vimrc
ln -s ./dotfiles/.git ~/.git
ln -s ./dotfiles/.gitconfig ~/.gitconfig

# install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# install brew/cask packages in Brewfile
brew bundle
