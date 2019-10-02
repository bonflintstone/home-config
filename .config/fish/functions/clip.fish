# Defined in - @ line 1
function clip --description 'alias clip tmux show-buffer | wl-copy'
	tmux show-buffer | wl-copy $argv;
end
