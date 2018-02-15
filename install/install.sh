#!/bin/bash

## Create symlinks~

### Zsh
ln -sf ~/.files/zsh/zshrc ~/.zshrc
ln -sf ~/.files/zsh/ ~/.zsh

### Vim
ln -sf ~/.files/vim/vimrc ~/.vimrc
ln -sf ~/.files/vim/ ~/.vim


### Git
ln -sf ~/.files/git/gitconfig ~/.gitconfig
ln -sf ~/.files/git/gitignore ~/.gitignore
ln -sf ~/.files/git/gitattributes ~/.gitattributes

### Tmux
ln -sf ~/.files/tmux/tmux.conf ~/.tmux.conf

### Irssi
ln -sf ~/.files/irssi ~/.irssi

### Todo.txt
ln -sf ~/.files/todo ~/.todo
mkdir -p ~/.todo-data

# OS specific setup
case `uname` in
	Darwin)
		# OS X
		
		if [[ $(command -v brew) == "" ]]; then
			# Install Homebrew
			ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		fi

		# Install Homebrew
		# /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		brew update

	;;
	Linux)
		# Linux

	;;

esac