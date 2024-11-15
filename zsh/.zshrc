export VISUAL=nvim
export EDITOR="$VISUAL"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_THEME="robbyrussell"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)
source <(zoxide init zsh)
source <(hermes completion zsh)
