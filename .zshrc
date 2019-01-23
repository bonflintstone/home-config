export ZSH=${HOME}/.oh-my-zsh
export LANG=en_US.UTF-8
export ZSH_THEME="alanpeabody"
plugins=(git rails ruby node react-native rvm)

<<<<<<< HEAD
source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

alias gall="git add --all :/"
=======
export ANDROID_SDK_ROOT=${HOME}/.android/sdk
export ANDROID_HOME=${ANDROID_SDK_ROOT}

export PATH=${PATH}:"/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:${HOME}/.rvm/bin:${HOME}.rvm/bin:${HOME}.phantomjs/bin"
export PATH=${PATH}:${ANDROID_SDK_ROOT}/tools
export PATH=${PATH}:${ANDROID_SDK_ROOT}/platform-tools
export PATH=${PATH}:${HOME}/.yarn/bin
export PATH=${PATH}:${HOME}/.nimble/bin
export PATH=${PATH}:${HOME}/.cargo/bin
export PATH=${PATH}:${HOME}/.scripts

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source ~/.bin/tmuxinator.zsh

source ~/.scripts/notify.sh
source ~/.scripts/numbat-deploy.sh
. /usr/share/autojump/autojump.sh

alias dokku="$HOME/.dokku/contrib/dokku_client.sh"
alias mux="rvm 2.5.1 do tmuxinator"
alias toclip="tmux show-buffer | clipcopy"
alias gall="git add --all :/"
alias o="xdg-open"
function p { nohup qpdfview $1 > /dev/null & }
function pa { nohup qpdfview $1**/*pdf > /dev/null & }
>>>>>>> master
alias ggpush='git push origin $(git_current_branch) --tags'
alias ggpull='git pull origin $(git_current_branch) --tags'
alias update='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt-get autoclean && sudo apt-get autoremove'

stty -ixon
