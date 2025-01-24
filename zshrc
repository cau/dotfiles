source ~/.dotfiles/zsh/prompt.sh
source ~/.dotfiles/zsh/aliases.sh
source ~/.dotfiles/zsh/terminal.sh

for file in ~/.dotfiles/secrets.d/*.sh; do
  source "$file"
done
