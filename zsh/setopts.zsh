## Zsh setopts ##

# Basics
setopt no_beep
setopt interactive_comments			# Allow comments in interactive shell

# Moving between folders
setopt auto_cd					# If entry is valid folder, cd into it
setopt cdablevarS
setopt pushd_ignore_dups			# 

# History
setopt append_history				# Allow multiple terminal sessions with unified history
setopt extended_history				# Save timestamp of command and duration
setopt inc_append_history			# Add commands as they are typed
setopt hist_expire_dups_first			# Oldest duplicates removed first
setopt hist_ignore_dups				# Do not write duplicates of previous entries
setopt hist_ignore_space			# Remove command line from history, when first character is a space
setopt hist_find_no_dups			# Display results already cycled through twice in history
setopt hist_reduce_blanks			# Remove extra blanks from each command line being added to history
setopt hist_verify				# No execution, just expanding history
setopt share_history

# Completion
setopt always_to_end				# Move the cursor to the end of the word when completing
setopt auto_menu				# Completion menu on successive tab press. needs unsetop menu_complete to work
setopt complete_in_word				# Completion from within a word
unsetopt menu_complete				# Make auto_menu work

# ===== Correction
unsetopt correct_all				# Spelling correction for arguments
setopt correct					# Spelling correction for commands

# ===== Prompt
setopt prompt_subst				# Enable parameter expansion

