# Defined in - @ line 0
function lastshot --description 'alias lastshot=o (fd -I png Pictures/ | sort | tail -n 1)'
	o (fd -I png Pictures/ | sort | tail -n 1) $argv;
end
