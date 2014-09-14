# .profile - Bourne Shell startup script for login shells

ENV=; export ENV

if [ "$BASH" ]; then
  if [ -f ~/.bashrc ]; then
    . ~/.bashrc
  fi
fi

mesg n

# list (detached) sessions, if any
screen -ls | fgrep $'\t'
