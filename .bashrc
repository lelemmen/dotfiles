# If a given file is a regular file, source it to the current shell
function source_if_regular_file () {
    [ -f "$1" ] && source "$1"
}


# Source all OS-specific dotfiles
dotfiles_dir=~/Software/.dotfiles
case $(uname) in
    "Darwin")
        mbp_dotfiles_dir=${dotfiles_dir}/MacbookPro
        for mbp_dotfile in ${mbp_dotfiles_dir}/.{exports,alias,functions,path}; do
            source_if_regular_file ${mbp_dotfile}
        done 
        ;;
    "Linux")
        rpi_dotfiles_dir=${dotfiles_dir}/RaspberryPi
        for rpi_dotfile in ${rpi_dotfiles_dir}/.{exports,alias}; do
            source_if_regular_file ${rpi_dotfile}
        done
        ;;
    *)
        echo "Unrecognized OS."
        ;;
esac


# Source all the general dotfiles (order matters)
for dotfile in ${dotfiles_dir}/.{exports,env,path,alias,functions,prompt}; do
    source_if_regular_file ${dotfile}   
done


