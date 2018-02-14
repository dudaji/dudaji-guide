# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Source my bashrc
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

if [ $ITERM_SESSION_ID ]; then
	export PROMPT_COMMAND='echo -ne "\033]0;${PWD##*/}\007"'
fi

alias ls='ls -G'
