set -o vi
PS1="[`whoami`@`hostname`]$ "

# Verbose commands
alias ls="ls -A"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"

alias gettune="yt-dlp --extract-audio --audio-format wav $1"
alias youtube="sh ~/scripts/ytfzf/ytfzf"
alias cputemp="sysctl hw.sensors.cpu0.temp0"
alias searchlinux="lynx https://linuxsheet.com"
alias search="lynx https://duckduckgo.com"

# I am experimenting with different terminal emulations
export TERM=screen
#export TERM=xterm
#export TERM=vt100
#export TERM=ms-vt100-color
#export TERM=vt220
#export TERM=crt-vt220
#export TERM=vt340
#export TERM=linux
#export TERM=linux-vt
#export TERM=linux-basic
