#!/bin/bash

set -e
set -x

## Python
sudo apt-get install python3-pip python3-autopep8 pylint python3-venv
python3 -m pip install --user pipx
pipx install black
pipx install isort

## Vim
sudo apt-get install vim-nox

cp .vimrc ~/
cp -r .vim ~/

# Install vim ALE for Asynchronous Linting
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

# Install NerdTree
git clone https://github.com/preservim/nerdtree.git ~/.vim/pack/vendor/start/nerdtree
vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" -c q

# Install vim unimpared

mkdir -p ~/.vim/pack/tpope/start
cd ~/.vim/pack/tpope/start
git clone https://tpope.io/vim/unimpaired.git
vim -u NONE -c "helptags unimpaired/doc" -c q

echo "Remember: you need to install pylint in virtual environments in order to make it see all packages!"

# Git

sudo apt-get install git 
git config --global core.editor "vim"

set +e
set +x
