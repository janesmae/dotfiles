## Zsh History ##

HISTSIZE=100000
SAVEHIST=100000
HISTFILE=~/.zsh/.zsh_history

# Don't keep history of root account
if [ $UID = 0 ]; then
  unset HISTFILE
  SAVEHIST=0
fi