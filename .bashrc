dotfiles_dir=~/Software/.dotfiles

# Source all the dotfiles (order matters)
for dotfile in ${dotfiles_dir}/.{exports,env,path,alias,functions,prompt}; do
	
    # If the dotfile is a regular file, source it to the current shell
    [ -f "${dotfile}" ] && source "${dotfile}"
done


# Source all OS-specific dotfiles
case $(uname) in
    "Darwin")
        source ${dotfiles_dir}/MacbookPro/.functions
        ;;
    "Linux")
        source ${dotfiles_dir}/RaspberryPi/*
        ;;
    *)
        echo "Unrecognized OS."
        ;;
esac

