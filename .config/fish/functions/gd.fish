function gd
	git diff; git ls-files --others --exclude-standard | xargs -n 1 git diff /dev/null;
end
