## Zsh Environment ##

# Set default file permissions
umask 022

# Include Environment variables
export PATH=$PATH:$HOME/bin
export EDITOR=vim

# Include autoenv global environment settings
export AUTOENV_FILE_ENTER=.autoenv
export AUTOENV_FILE_LEAVE=.autoenv
export AUTOENV_HANDLE_LEAVE=1

# Fix language issue

if [[ -z "$LC_ALL" ]]; then
        export LC_ALL='en_US.UTF-8'
fi

# Fix a strange gpg issue
export GPG_TTY=$(tty)

# Start using Sekey
if [[ -f $HOME/.sekey/ssh-agent.ssh ]]; then
  export SSH_AUTH_SOCK=$HOME/.sekey/ssh-agent.ssh
fi
