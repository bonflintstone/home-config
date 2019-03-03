# Defined in - @ line 0
function clippaste --description 'alias clippaste=xclip -selection clipboard -out'
	xclip -selection clipboard -out $argv;
end
