# Defined in - @ line 1
function ggpull --description 'alias ggpull git pull origin (git rev-parse --abbrev-ref HEAD) --tags'
	git pull origin (git rev-parse --abbrev-ref HEAD) --tags $argv;
end
