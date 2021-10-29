function git_remove_branches_not_on_origin
git remote prune origin
git switch (git remote show origin | ag HEAD\ branch | cut -d ' ' -f5)
git branch | ag -v (git branch -a | ag 'remotes/origin' | ag -v '\->' | sed 's/.*\/origin\///' | paste -sd '|' /dev/stdin) | xargs -r git branch -D
end
