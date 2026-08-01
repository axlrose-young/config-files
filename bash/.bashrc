#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# added configs

export PATH="$HOME/dotfiles/scripts:$PATH"
export EDITOR=vim

alias v='vim'
alias ll='ls -lah'
alias yy='yazi'
alias gs='git status'

eval "$(starship init bash)"
