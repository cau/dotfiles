parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

setopt PROMPT_SUBST
export PROMPT='%F{blue}%~%f%F{red}$(parse_git_branch)%f %# '
