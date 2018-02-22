## Source all the dotfiles, order matters!
for dotfile in ~/Software/.dotfiles/system/.{exports,env,path,alias,functions,prompt}; do
	# If the dotfile is a regular file, source it to the current shell
	[ -f "$dotfile" ] && source "$dotfile"
done


## I'd like to use everything when in sudo on my Mac. The default shell for root is /bin/sh, which will first attempt to read and execute from /etc/profile (https://unix.stackexchange.com/a/195239).
alias sudo='sudo '		# If the last character of an alias value is a space or tab, then the next word is also checked for alias expansion (https://askubuntu.com/a/22043)

