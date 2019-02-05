# If a given file is a regular file, source it to the current shell
function source_if_regular_file () {
    [ -f "$1" ] && source "$1"
}


# Source all the dotfiles (order matters)
dotfiles_dir=~/Software/.dotfiles
for dotfile in ${dotfiles_dir}/.{exports,env,path,alias,functions,prompt}; do
    source_if_regular_file ${dotfile}   
done


# Source all OS-specific dotfiles
case $(uname) in
    "Darwin")
        mbp_dotfiles_dir=${dotfiles_dir}/MacbookPro
        for mbp_dotfile in ${mbp_dotfiles_dir}/.{functions,exports,path}; do
            source_if_regular_file ${mbp_dotfile}
        done 
        ;;
    "Linux")
        source ${dotfiles_dir}/RaspberryPi/*
        ;;
    *)
        echo "Unrecognized OS."
        ;;
esac

