# This file is executed by interactive login and non-login shells

# Vi-mode line editing
bindkey -v

# Disable writing zsh history to a file
unset HISTFILE

# Disable writing less history to a file
export LESSHISTFILE=/dev/null

# Default text editor, used by some tools
#export EDITOR="vim"

# Set the prompt to show '#' for root (red and and bold/bright)
# and '$' for non-root users (blue and bold/bright)
if [ ${EUID} -eq 0 ]; then
  #PS1='%{\e[1;31m%}%#%{\e[0m%} '
  PS1='%# '
else
  #PS1='%{\e[1;34m%}%#%{\e[0m%} '
  PS1='%# '
fi

alias cp='cp -iv'
alias ln='ln -ivw'
alias mv='mv -iv'
alias rm='rm -iv'

alias mkdir='mkdir -pv'
alias rmdir='rmdir -v'

alias ls='ls --color -h'

alias df='df -hY'
alias du='du -hs'

alias chgrp='chgrp -v'
alias chmod='chmod -v'
alias chown='chown -v'

alias cat='cat -n'
alias cmp='cmp -b'
alias diff='diff --color -s'
alias grep='grep --color'

alias make='make -d --warn-undefined-variables'
