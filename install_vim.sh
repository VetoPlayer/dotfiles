#!/bin/bash



# Install jedi for autocompletion support
sudo apt-get install vim-python-jedi 

## You need to have the jedi library installed in you venv (or systemwide)
pip install jedi

# Look for information
apt-cache show vim-python-jedi

# vim-addons install python-jedi` will create all needed symlinks in ~/.vim/
# TODO: Checkout vim-pylint package 


set +e
## Pylint can automatically generate UML diagrams for you!
