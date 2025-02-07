[[ -s ~/.profile ]] && source ~/.profile

source ~/.dotfiles/bash/completion.sh
source ~/.dotfiles/bash/environment.sh
source ~/.dotfiles/bash/prompt.sh

for file in ~/.dotfiles/secrets.d/*.sh; do
  source "$file"
done

