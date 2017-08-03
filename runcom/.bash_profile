## Source all the dotfiles, order matters!
for DOTFILE in ~/Software/.dotfiles/system/.{exports,env,path,alias,functions,prompt}; do
	# If the DOTFILE is a regular file, source it to the current shell
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done
unset DOTFILE
