#!/bin/bash
#
# This script will install and enable PostgreSQL 9.5 for CentOS 7 locally
# for development. Must be sudo'd.
#

echo "Adding the PostgreSQL 9.5 repository..."
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -
sudo apt-get -qq update

echo "Installing PostgreSQL..."
sudo apt-get -qq install postgresql postgresql-contrib
# > /dev/null 2>&1
#cp /vagrant/examples/pg_hba.conf /etc/postgresql/9.5/main/
#cp /vagrant/examples/postgresql.conf /etc/postgresql/9.5/main/
systemctl restart postgresql
systemctl enable postgresql

echo "Opening up port 5432 on the firewall..."
# firewall-cmd --permanent --add-service postgresql > /dev/null 2>&1
# systemctl restart firewalld > /dev/null 2>&1

echo "Making user 'vagrant' a superuser..."
sudo -u postgres createuser -sd vagrant
sudo -u postgres createdb vagrant

echo "PostgreSQL installation complete."
