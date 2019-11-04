# Defined in - @ line 1
function clip --description 'alias clip tmux show-buffer | wl-copy --primary'
	tmux show-buffer | wl-copy --primary $argv;
end
