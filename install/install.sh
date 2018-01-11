#!/bin/bash

## Create symlinks~

### Zsh
ln -s ~/.files/zsh/zshrc ~/.zshrc
ln -s ~/.files/zsh/ ~/.zsh

### Vim
ln -s ~/.files/vim/vimrc ~/.vimrc
ln -s ~/.files/vim/ ~/.vim


### Git
ln -s ~/.files/git/gitconfig ~/.gitconfig
ln -s ~/.files/git/gitignore ~/.gitignore
ln -s ~/.files/git/gitatributes ~/.gitatributes

# OS specific setup
case `uname` in
	Darwin)
		# OS X

		# Install Homebrew
		/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		brew update

	;;
	Linux)
		# Linux

	;;

esac