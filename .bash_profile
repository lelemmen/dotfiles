# Source ~/.bashrc if it exists
if [[ -s ~/.bashrc ]]; then
    source ~/.bashrc;
fi


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/laurentlemmens/miniconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/laurentlemmens/miniconda/etc/profile.d/conda.sh" ]; then
        . "/Users/laurentlemmens/miniconda/etc/profile.d/conda.sh"
    else
        export PATH="/Users/laurentlemmens/miniconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

