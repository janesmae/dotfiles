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
ln -sfn ~/.private/todo-data ~/.todo-data

### Ansible
ln -sfn ~/.files/ansible/ansible.cfg ~/.ansible.cfg
ln -sfn ~/.private/ansible ~/.ansible

# OS specific setup
case `uname` in
	Darwin)
		# OS X
		
		if [[ $(command -v brew) == "" ]]; then
			# Install Homebrew
			ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
		fi

		# Install Homebrew updates
		brew update

		# Install all most applications using homebrew
		brew bundle install --file=~/.files/install/Brewfile

		# Set up your mac environment
		source ~/.files/macos.sh
	;;
	Linux)
		# Linux

	;;

esac

# Create essential folders

mkdir -p ~/Development
mkdir -p ~/Screenshots
