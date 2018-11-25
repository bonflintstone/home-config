numbat_deploy() {
  export OLD_PWD=$(pwd)
  cd ~/Documents/numbat-server
  echo 'y' | thor release HEAD || (cd $OLD_PWD && return)
  export GIT_HASH=$(git rev-parse --verify --quiet HEAD | cut -c1-9)
  export SERVER_FILE_NAME="numbat-server-HEAD-mri-${GIT_HASH}.zip"
  scp releases/$SERVER_FILE_NAME deploy@10.181.196.23:$SERVER_FILE_NAME || (cd $OLD_PWD && return)

  cd ~/Documents/numbat-webapp
  echo 'y' | thor release HEAD || return
  export GIT_HASH=$(git rev-parse --verify --quiet HEAD | cut -c1-7)
  export WEB_FILE_NAME="numbat-webapp-HEAD-${GIT_HASH}.zip"
  scp releases/$WEB_FILE_NAME deploy@10.181.196.23:$WEB_FILE_NAME || (cd $OLD_PWD && return)

  ssh deploy@10.181.196.23 "./deploy.sh demo $WEB_FILE_NAME $SERVER_FILE_NAME"

  cd $OLD_PWD
}
