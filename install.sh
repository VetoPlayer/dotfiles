#!/bin/bash

echo "Installing .bashrc, .vimrc"
cp .vimrc ~/
cp -r .vim ~/

## Install cron jobs
sudo cp scripts/remap.sh /usr/local/bin/
## Tell cron to run its jobs
sudo cp remap_job /etc/cron.d/
