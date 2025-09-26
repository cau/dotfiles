export EDITOR="vim"

autoload -Uz compinit
compinit

eval "$(op completion zsh)"; compdef _op op

autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end
