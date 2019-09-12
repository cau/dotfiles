function __branch {
  echo -e "`git branch 2>/dev/null | grep -e '\* ' | sed 's/^..\(.*\)/\1/'`"
}

function __repository {
  BRANCH="$(__branch)"

  if [ ! -z "${BRANCH}" ]; then
    if [ "${BRANCH}" = "master" ]; then
      BRANCH_COLOR="\033[31m"
    else
      BRANCH_COLOR="\033[33m"
    fi

    echo -e " (${BRANCH_COLOR}${BRANCH}\033[0m)"
  fi
}

function __server {
  if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
    echo -e "\033[37m`hostname -s`\033[0m "
  fi
}

export PS1="\$(__server)\033[34m\w\033[0m\$(__repository) \$ ";
