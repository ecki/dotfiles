# .profile - Bourne Shell startup script for login shells

ENV="$HOME/.bashrc"; export ENV
. "$ENV"

# list (detached) sessions, if any
screen -ls | fgrep $'\t'
