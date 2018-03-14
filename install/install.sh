#!/usr/bin/env bash

## Create symlinks~

### Zsh
ln -sfn ~/.files/zsh/zshrc ~/.zshrc
ln -sfn ~/.files/zsh/ ~/.zsh

### Vim
ln -sfn ~/.files/vim/vimrc ~/.vimrc
ln -sfn ~/.files/vim/ ~/.vim

### Git
ln -sfn ~/.files/git/gitconfig ~/.gitconfig
ln -sfn ~/.files/git/gitignore ~/.gitignore
ln -sfn ~/.files/git/gitattributes ~/.gitattributes

### Tmux
ln -sfn ~/.files/tmux/tmux.conf ~/.tmux.conf

### Irssi
ln -sfn ~/.files/irssi/ ~/.irssi

### Todo.txt
ln -sfn ~/.files/todo/ ~/.todo
# mkdir -p ~/.todo-data
ln -sfn ~/.private/todo-data ~/.todo-data

# OS specific setup
case `uname` in
	Darwin)
		# OS X
		
		if [[ $(command -v brew) == "" ]]; then
			# Install Homebrew
			ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		fi

		# Install Homebrew
		brew update
	;;
	Linux)
		# Linux

	;;

esac

# Create essential folders

mkdir -p ~/Development
mkdir -p ~/Screenshots
