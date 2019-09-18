function __branch {
  echo -e "`git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ (\1)/'`"
}

function __server {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo -e "`hostname -s` "
  fi
}

export PS1="\[\033[37m\]\$(__server)\[\033[0m\]\[\033[34m\]\w\[\033[0m\]\[\033[31m\]\$(__branch)\[\033[0m\] \$ ";
