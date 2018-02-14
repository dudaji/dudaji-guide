#!/bin/bash

set -e
set -o pipefail

function doIt() {
    rsync -avh --no-perms ./dotfiles/ ~;
    source ~/.bashrc;
    source ~/.bash_profile;

    # Install Vundle first
    rm -fr ~/.vim/bundle
    git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    # Install Vundle plugins
    vim +PluginInstall +qall
    vi ~/.gitconfig
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
    doIt;
else
    read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
    echo "";
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        doIt;
    fi;
fi;
unset doIt;
