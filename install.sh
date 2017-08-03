#!/bin/bash
### "Install" the dotfiles


## Symbolic links to ~ ($HOME)
# ln -s: symbolic link, -f: if the target file exists, unlink it, -v: verbose
ln -sfv $PWD/runcom/.bash_profile ~
ln -sfv $PWD/runcom/.inputrc ~
ln -sfv $PWD/runcom/.vimrc ~

ln -sfv $PWD/git/.gitconfig ~
ln -sfv $PWD/git/.gitignore_global ~

cp -R $PWD/vim/ ~/.vim/
echo "Copied $PWD/vim/ => ~/.vim/"
