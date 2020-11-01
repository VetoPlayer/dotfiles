#!/bin/bash

set -e
sudo apt-get install exuberant-ctags

set +e

## Actual command for generating ctags:
ctags -R --fields=+l --languages=python --python-kinds=-iv -f .
