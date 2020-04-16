function git_remove_branches_not_on_origin
git remote prune origin
git switch master
git branch | ack -v (git branch -a | ack 'origin' | ack -v '\->' | sed 's/.*\/origin\///' | paste -sd '|') | xargs -r git branch -D '{}'
end
