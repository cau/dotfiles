export GPG_TTY=$(tty)

if [ -f "${HOME}/.gpg-agent-info" ]; then
  source "${HOME}/.gpg-agent-info"
  export GPG_AGENT_INFO
  export SSH_AUTH_SOCK
fi

