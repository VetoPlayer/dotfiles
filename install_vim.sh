#!/bin/bash

set -e

# Install vim ALE for Asynchronous Linting
mkdir -p ~/.vim/pack/git-plugins/start
git clone --depth 1 https://github.com/dense-analysis/ale.git ~/.vim/pack/git-plugins/start/ale

# Install pylint and python3-autopep8
sudo apt-get install python3-autopep8 pylint

# TODO: Checkout vim-pylint package 

echo "Linting: Remember pylint has to be installed inside the virtual environment!"

set +e
## Pylint can automatically generate UML diagrams for you!
