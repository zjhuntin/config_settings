#!/bin/bash

echo "setting up dev environment"

./git_ssh.sh
./zsh.sh

echo "copying files"

cp ~/config_settings/env_setup/vimrc ~/.vimrc
cp ~/config_settings/env_setup//config_settings/env_setup/pryrc ~/.pryrc

export PS1="\[\e[1;$(shuf -i31-36 -n1)m\][\u@\h \W\$(git branch 2> /dev/null | grep -e '\* ' | sed 's/^..\(.*\)/{\1}/')]\$\[\e[0m\] "

cp ~/config_settings/env_setup/gitconfig ~/.gitconfig
cp ~/config_settings/env_setup/screenrc ~/.screenrc

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim +PluginInstall +qall
