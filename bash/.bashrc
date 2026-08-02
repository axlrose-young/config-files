#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# added configs

# Removes duplicate path export
if [[ :"$PATH": != *"$HOME/dotfiles/scripts"* ]];then
	export PATH="$HOME/dotfiles/scripts:$PATH"
fi

export EDITOR=vim

alias v='vim'
alias ll='ls -lah'
alias yy='yazi'
alias gs='git status'
alias x='startx'

eval "$(starship init bash)"
