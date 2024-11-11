export GOPATH=$HOME/go
export GOROOT=/usr/local/go
export GOBIN=$GOPATH/bin
export PATH="$PATH:$GOROOT:$GOBIN"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
ZSH_THEME="robbyrussell"
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

source <(fzf --zsh)

source <(zoxide init zsh)
alias cd=z
