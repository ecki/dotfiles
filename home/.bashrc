# Prompt
export PS1='\u@\h \w\$ '

export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export CDPATH=".:$HOME"

# TODO: find first existing
export EDITOR=nano
export PAGER=less

# GNU tools
export COLOR=auto
# FreeBSD
export CLICOLOR=auto

# file permissions: rwxr-xr-x
umask 022

# Emacs, e.g. C-a -> beginning-of-line.
set -o emacs

# some useful aliases
alias h='fc -l'
alias j=jobs
alias m=$PAGER
alias ll='ls -laFoh'
alias l='ls -lhF'
alias ld='ls -dFh'
alias g='egrep -i --color=auto'
alias dr='screen -d -R -a -A -O'
alias ..='cd ..'
alias ...='cd ../..'

# bash options
shopt -s cdable_vars cdspell autocd
shopt -s globskipdots extglob failglob globstar
# safe
shopt -s globasciiranges
shopt -u nocasematch dotglob nullglob

