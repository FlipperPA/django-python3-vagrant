#!/bin/bash

# Install git for version control, pip for install python packages
echo 'Installing git and python3-pip...'
sudo apt-get -qq install git python3-pip > /dev/null 2>&1

# Install virtualenv / virtualenvwrapper
echo 'Installing virtualenv and virtualenvwrapper...'
pip3 install --quiet virtualenv
pip3 install --quiet virtualenvwrapper
mkdir ~vagrant/.virtualenvs
chown vagrant:vagrant ~vagrant/.virtualenvs
printf "\n\n# Virtualenv settings\n" >> ~vagrant/.bashrc
printf "export PYTHONPATH=/usr/lib/python3.4" >> ~vagrant/.bashrc
printf "export WORKON_HOME=~vagrant/.virtualenvs\n" >> ~vagrant/.bashrc
printf "export PROJECT_HOME=/vagrant\n" >> ~vagrant/.bashrc
printf "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.4\n" >> ~vagrant/.bashrc
printf "source /usr/local/bin/virtualenvwrapper.sh\n" >> ~vagrant/.bashrc
printf "alias python='/usr/bin/python3.4'\n" >> ~vagrant/.bashrc
printf "alias menu='cat /etc/motd'\n" >> ~vagrant/.bashrc
printf "alias runserver='python manage.py runserver 0.0.0.0:8000'\n" >> ~vagrant/.bashrc

# Complete
cp /vagrant/examples/motd.txt /etc/motd
echo ""
echo "Vagrant install complete."
echo "Now try logging in:"
echo "    $ vagrant ssh"

