# Defined in - @ line 1
function ggpull --wraps='git pull origin (git rev-parse --abbrev-ref HEAD) --tags --rebase --autostash' --description 'alias ggpull git pull origin (git rev-parse --abbrev-ref HEAD) --tags --rebase --autostash'
  git pull origin (git rev-parse --abbrev-ref HEAD) --tags --rebase --autostash $argv;
end
