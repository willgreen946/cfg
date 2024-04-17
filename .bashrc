PS1="\[\e[31m\][\[\e[m\]\[\e[33m\]\u\[\e[m\]\[\e[32m\]@\[\e[m\]\[\e[34m\]\h\[\e[m\] \[\e[35m\]\w\[\e[m\]\[\e[31m\]]\[\e[m\]\\$ "

set -o vi

# verbose commands
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"

# some OpenBSD familiarity
alias apm="upower -i `upower -e | grep BAT`"
