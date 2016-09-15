function __branch {
  echo "`git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/ \(\1\)/'`"
}

function __server {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo "`whoami`@`hostname -s` "
  fi
}

export PS1="\$(__server)\w\$(__branch) \$ ";
