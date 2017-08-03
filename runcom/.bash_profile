## Source all the dotfiles
for DOTFILE in $(find ~/Software/.dotfiles/system); do
	# If the DOTFILE is a regular file, source it to the current shell
	[ -f "$DOTFILE" ] && source "$DOTFILE"
done

unset DOTFILE
