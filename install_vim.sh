#!/bin/bash

set -e

# Install vim ALE for Asynchronous Linting
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

# Install vim-nox for python3 extension support, pylint and python3-autopep8
sudo apt-get install vim-nox python3-autopep8 pylint

# Install jedi for autocompletion support
sudo apt-get install vim-python-jedi 

## You need to have the jedi library installed in you venv (or systemwide)
pip install jedi

# Look for information
apt-cache show vim-python-jedi

# vim-addons install python-jedi` will create all needed symlinks in ~/.vim/
# TODO: Checkout vim-pylint package 

echo "Linting: Remember pylint has to be installed inside the virtual environment!"

set +e
## Pylint can automatically generate UML diagrams for you!
