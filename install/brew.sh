#!/usr/bin/env bash

if test ! $(which brew); then
	echo -e "\t- Installing homebrew"
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo -e "\t- Installing homebrew packages..."

formulas=(
	coreutils
	moreutils
	openssl
	zsh
	tmux
	git
	hub
	vim
	p7zip
	curl
	wget
	tree
	'grep --with-default-names'
	jo
	reattach-to-user-namespace
	the_silver_searcher
	markdown
	ponysay
	mas
)

for formula in "${formulas[@]}"; do
	if brew list "$formula" > /dev/null 2>&1; then
		echo -e "\t\t- Skipping $formula - already installed."
	else
		echo -e "\t\t- Installing $formula ..."
		brew install $formula > /dev/null
	fi
done