export EDITOR="vim"

autoload -Uz compinit
compinit

eval "$(op completion zsh)"; compdef _op op

