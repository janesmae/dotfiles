## Zsh prompt ##

# Design inspiration from:
#
#  - Original agnoster's theme - https://gist.github.com/3712874
#  - Forked agnosters theme - https://gist.github.com/rjorgenson/83094662ace4d3b82b95

CURRENT_BG='None'

SEGMENT_SEPARATOR="\ue0b0"
RSEGMENT_SEPARATOR="\ue0b2"

SYMBOL_PLUSMINUS="\u00b1"
SYMBOL_ARROW="\uf176"
SYMBOL_FILE="\uf713"

SYMBOL_BRANCH="\ue0a0"

SYMBOL_CROSS="\uf00d"
SYMBOL_GEAR="\uf013"

SYMBOL_STASH="\ufb12"

# Prompts

prompt_segment() {
	local bg fg
	[[ -n $1 ]] && bg="%K{$1}" || bg="%k"
	[[ -n $2 ]] && fg="%F{$2}" || fg="%f"
	if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
		print -n "%{$bg%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR%{$fg%}"
	else
		print -n "%{$bg%}%{$fg%}"
	fi
	CURRENT_BG=$1
	[[ -n $3 ]] && print -n $3
}

rprompt_segment() {
	local bg fg
	[[ -n $1 ]] && bg="%K{$1}" || bg="%k"
	[[ -n $2 ]] && fg="%F{$2}" || fg="%f"
	if [[ $CURRENT_BG != 'NONE' && $1 != $CURRENT_BG ]]; then
		echo -n " %{%K{$CURRENT_BG}%F{$1}%}$RSEGMENT_SEPARATOR%{$bg%}%{$fg%} "
	else
		echo -n "%F{$1}%{%K{default}%}$RSEGMENT_SEPARATOR%{$bg%}%{$fg%} "
	fi
	CURRENT_BG=$1
	[[ -n $3 ]] && echo -n $3
}

prompt_end() {
	if [[ -n $CURRENT_BG ]]; then
		print -n "%{%k%F{$CURRENT_BG}%}$SEGMENT_SEPARATOR"
	else
		print -n "%{%k%}"
	fi
	print -n "%{%f%}"
	CURRENT_BG=''
}

# Content

prompt_user() {
	local color
	[[ $(print -P "%#") == '#' ]] && color=9 || color=190
	# [[ $UID == 0 || $EUID == 0 ]] && color="9" || color="190"
	prompt_segment $color 232 "%B %n %b"
}

prompt_host() {
	local color prompt
	if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
		color=200
		prompt="%M"
	else
		color=39
		prompt="%m"
	fi
	prompt_segment $color 232 "%B $prompt %b"
}

prompt_dir() {
	prompt_segment 240 255 ' %~ '
}

prompt_git() {
	local fg bg ref gitst gitstatus
	ref=$(=git symbolic-ref HEAD 2> /dev/null)
	gitst="$(=git status 2> /dev/null)"

	bg=28
	fg=255

	if [[ -n `git stash list 2> /dev/null` ]]; then
		gitstatus="$gitstatus$SYMBOL_STASH"
	fi

	if [[ ${gitst} =~ "Changes to be committed" ]]; then
		bg=226
		fg=232
	fi

	if [[ ${gitst} =~ "Changes not staged for commit" ]]; then
		gitstatus="$gitstatus$SYMBOL_PLUSMINUS"
	fi

	if [[ ${gitst} =~ "Untracked files" ]]; then
		gitstatus="$gitstatus$SYMBOL_FILE"
	fi

	if [[ -n `git checkout HEAD 2> /dev/null | grep ahead` ]]; then
		gitstatus="$gitstatus$SYMBOL_ARROW"
	fi

	if [[ -n $gitstatus ]]; then
		rprompt_segment 240 255 "$gitstatus"
	fi

	if [[ -n $ref ]]; then
		rprompt_segment $bg $fg "$SYMBOL_BRANCH %B${ref#refs/heads/}%b"
	fi
}

prompt_status() {
	local symbols
	symbols=()
	[[ $RETVAL -ne 0 ]] && symbols+="%{%F{red}%}$SYMBOL_CROSS"
	[[ $(jobs -l | wc -l) -gt 0 ]] && symbols+="%{%F{39}%}$SYMBOL_GEAR"
	[[ -n "$symbols" ]] && prompt_segment black default " $symbols "
}

prompt_left() {
	RETVAL=$?
	CURRENT_BG='NONE'
	prompt_status
	prompt_user
	prompt_host
	prompt_dir
	prompt_end
}

prompt_right() {
	prompt_git
}

prompt_precmd() {
	vcs_info
	PROMPT='%{%f%b%k%}$(prompt_left) '
	RPROMPT='%{%f%b%k%}$(prompt_right) '
}

prompt_setup() {
	autoload -Uz add-zsh-hook
	autoload -Uz vcs_info

	prompt_opts=(cr subst percent)

	add-zsh-hook precmd prompt_precmd

	zstyle ':vcs_info:*' enable git
	zstyle ':vcs_info:*' check-for-changes false
	zstyle ':vcs_info:git*' formats '%b'
	zstyle ':vcs_info:git*' actionformats '%b (%a)'
}

prompt_setup "$@"