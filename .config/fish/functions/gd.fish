# Defined in - @ line 1
function gd --wraps='git add -NA; git diff' --description 'alias gd git add -NA; git diff'
  git add -NA; git diff $argv;
end
