#!/bin/bash

sudo yum install zsh -y
sudo yum install wget -y

wget --no-check-certificate http://install.ohmyz.sh -O - | sh

sudo chsh -s /bin/zsh $USER

cp ~/config_settings/env_setup/zshrc ~/.zshrc
