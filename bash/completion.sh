shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell

for option in autocd globstar; do
  shopt -s "$option" 2> /dev/null
done

if which brew &> /dev/null && [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  source "$(brew --prefix)/etc/bash_completion"
fi

[ -e "$HOME/.ssh/config.d" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config.d/* | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh
