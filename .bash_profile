for DOTFILE in 'find ~/Documents/Projecten/Persoonlijk/.dotfiles'
do
	[ -f "$DOTFILE$" ] && source "$DOTFILE"
done
