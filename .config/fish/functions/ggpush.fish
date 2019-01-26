# Defined in - @ line 1
function ggpush --description 'alias ggpush git push origin (git rev-parse --abbrev-ref HEAD) --tags'
	git push origin (git rev-parse --abbrev-ref HEAD) --tags $argv;
end
