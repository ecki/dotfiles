# .bashrc Bernd Eckenfels

export TERM=${TERM:-linux}

# Prompt
green=$(tput setaf 46)
strong=$(tput bold)
norm=$(tput -Tlinux sgr0)
export PS1="${green}\\u${norm}@\\h ${strong}\w\$${norm} "
export PROMPT_DIRTRIM=3

unset ENV BASH_ENV INPUTRC
export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin
export CDPATH=".:$HOME:$HOME/git"

# Safer file handling
set -o noclobber        # prevent > from overwriting files
set -o nounset          # error on unset variables
set -o pipefail         # catch failures in pipelines

# Avoid history/control characters from being expanded
set +o histexpand


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
alias r='fc -s'
alias j=jobs
alias m=$PAGER
alias ll='ls -laFoh'
alias l='ls -lhF'
alias ld='ls -dFh'
alias g='grep -H -P -a -n -i --color=auto'
alias dr='screen -d -R -a -A -O'
alias ..='cd ..'
alias ...='cd ../..'
alias cd..='cd ..'
alias cd-='cd -'
alias gir=git

# bash options
shopt -s cdable_vars cdspell autocd
shopt -s globskipdots extglob failglob globstar
# safe
export GLOBIGNORE=.git:.env:.secret
shopt -s globasciiranges
shopt -u nocasematch dotglob nullglob

