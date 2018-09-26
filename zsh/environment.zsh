## Zsh Environment ##

# Set default file permissions
umask 022

# Include Environment variables
export PATH=$PATH:$HOME/.bin
export EDITOR=vim

# Fix language issue

if [[ -z "$LC_ALL" ]]; then
        export LC_ALL='en_US.UTF-8'
fi