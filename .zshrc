export ZSH=/home/bonflintstone/.oh-my-zsh
ZSH_THEME="robbyrussell"
plugins=(git rails ruby)

export ANDROID_HOME=${HOME}/Android/Sdk
export ANDROID_SDK_ROOT=${HOME}/Android/Sdk/

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games:/home/bonflintstone/.rvm/bin:/home/bonflintstone/.rvm/bin:/home/bonflinstone/.phantomjs/bin"
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source ~/.rvm/scripts/rvm
source ~/.runcops
source ~/.update_ftw_db 
source ~/.dev-tmux

alias gdh='git push heroku master'
alias dokku="$HOME/.dokku/contrib/dokku_client.sh"
alias brightness="sudo /root/brightness"