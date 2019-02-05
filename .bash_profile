## Source all the dotfiles, order matters!
for dotfile in ~/Software/.dotfiles/system/.{exports,env,path,alias,functions,prompt}; do
	# If the dotfile is a regular file, source it to the current shell
	[ -f "$dotfile" ] && source "$dotfile"
done

