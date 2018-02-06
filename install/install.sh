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
ln -s ~/.files/git/gitattributes ~/.gitattributes

### Tmux
ln -s ~/.files/tmux/tmux.conf ~/.tmux.conf

### Irssi
ln -s ~/.files/irssi ~/.irssi

### Todo.txt
ln -s ~/.files/todo ~/.todo

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