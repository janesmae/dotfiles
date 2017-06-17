#!/usr/bin/env bash

# My .files including macos, vim, zsh, git, and tmux configurations. Feel free to use it and even make suggestions, however I may decline if there's not value to me.
# Full source: https://github.com/janesmae/dotfiles
# Check out README.md and LICENSE files for essential need to know stuff

echo -e "*** Installing .files ***"

# macOS-specific install
if [ "$(uname)" == "Darwin" ]; then
	echo -e "\t- Running macOS specific install"
	source install/brew.sh

	# Change screenshot location
	if [ ! -d ~/Screenshots ]; then
		echo -e "\t- Creating ~/Screenshots directory..."
		mkdir ~/Screenshots
	fi

	echo -e "\t- Setting screenshot location to ~/Screenshots"
	defaults write com.apple.screencapture location "~/Screenshots"

fi

