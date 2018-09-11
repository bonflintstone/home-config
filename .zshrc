export ZSH=${HOME}/.oh-my-zsh
export LANG=en_US.UTF-8
export ZSH_THEME="alanpeabody"
plugins=(git rails ruby node react-native rvm)

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

alias gall="git add --all :/"
alias ggpush='git push origin $(git_current_branch) --tags'
alias ggpull='git pull origin $(git_current_branch) --tags'
alias update='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt-get autoclean && sudo apt-get autoremove'

stty -ixon
