# Defined in - @ line 0
function clipcopy --description 'alias clipcopy=xclip -selection clipboard -in'
	xclip -selection clipboard -in $argv;
end
