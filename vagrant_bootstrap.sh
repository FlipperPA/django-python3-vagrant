#!/bin/bash
# Install git for version control, pip for install python packages
echo 'Installing git and python3-pip...'
sudo apt-get -qq install git python3-pip

# Install virtualenv / virtualenvwrapper
echo 'Installing virtualenv and virtualenvwrapper...'
sudo pip3 install --quiet virtualenv virtualenvwrapper
mkdir ~/.virtualenvs
printf "\n\n#Virtualenv settings\n" >> ~/.bashrc
printf "export WORKON_HOME=~/.virtualenvs\n" >> ~/.bashrc
printf "export PROJECT_HOME=/vagrant\n" >> ~/.bashrc
printf "export VIRTUALENVWRAPPER_PYTHON=python3\n" >> ~/.bashrc
printf "source /usr/local/bin/virtualenvwrapper.sh\n" >> ~/.bashrc
