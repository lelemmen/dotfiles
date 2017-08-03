## Source all the dotfiles
for DOTFILE in ~/Documents/Projecten/Persoonlijk/.dotfiles/.{env,alias,function}; do
	# If the DOTFILE is a regular file, source it to the current shell
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done


