function trash --description 'Move files to the trash folder instead of rm-ing them.'
	mv $argv[0] ~/.Trash
end
