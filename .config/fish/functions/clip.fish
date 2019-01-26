# Defined in - @ line 1
function clip --description 'alias clip tmux show-buffer | xclip -in -selection clipboard'
	tmux show-buffer | xclip -in -selection clipboard $argv;
end
