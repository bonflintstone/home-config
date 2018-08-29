export ZSH=${HOME}/.oh-my-zsh
export LANG=en_US.UTF-8
export ZSH_THEME="robbyrussell"
plugins=(git rails ruby node react-native rvm)

export ANDROID_SDK_ROOT=${HOME}/.android/sdk
export ANDROID_HOME=${ANDROID_SDK_ROOT}

export PATH=${PATH}:"/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:${HOME}/.rvm/bin:${HOME}.rvm/bin:${HOME}.phantomjs/bin"
export PATH=${PATH}:${ANDROID_SDK_ROOT}/tools
export PATH=${PATH}:${ANDROID_SDK_ROOT}/platform-tools
export PATH=${PATH}:${HOME}/.yarn/bin

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source ~/.bin/tmuxinator.zsh

alias dokku="$HOME/.dokku/contrib/dokku_client.sh"
alias mux="rvm 2.5.1 do tmuxinator"
alias toclip="tmux show-buffer | clipcopy"
alias gall="git add --all :/"
alias o="xdg-open"
function p { nohup okular $1 > /dev/null & }
alias pa="nohup okular **/*pdf > /dev/null &"
alias ggpush='git push origin $(git_current_branch) --tags'
alias ggpull='git pull origin $(git_current_branch) --tags'
alias update='sudo apt-get update && sudo apt-get upgrade -y && sudo apt-get dist-upgrade && sudo apt-get autoclean && sudo apt-get autoremove'

export RAILSLOVE_KNIFE_USER='freddybonfanti'

# Fixes that should not be
function sdp_dokku {
  (cd && DOKKU_PORT=2222 DOKKU_HOST=sdp-web dokku "$1 web ${@:2}")
}

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

stty -ixon

# So it works for non login shells
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
