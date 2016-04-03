#!/bin/bash
#
# This script will install and enable PostgreSQL 9.5 for CentOS 7 locally
# for development. Must be sudo'd.
#

echo "Adding the PostgreSQL 9.5 CentOS repository..."
sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | apt-key add -
apt-get -qq update

echo "Installing PostgreSQL..."
apt-get -qq install postgresql postgresql-contrib
# /usr/pgsql-9.5/bin/postgresql95-setup initdb
cp /vagrant/examples/pg_hba.conf /etc/postgresql/9.5/main/data
cp /vagrant/examples/postgresql.conf /etc/postgresql/9.5/main/data
systemctl restart postgresql-9.5
systemctl enable postgresql-9.5

echo "Opening up port 5432 on the firewall..."
# firewall-cmd --permanent --add-service postgresql > /dev/null 2>&1
# systemctl restart firewalld > /dev/null 2>&1

echo "Making user 'vagrant' a superuser..."
sudo -u postgres createuser -sd vagrant
sudo -u postgres createdb vagrant

echo "PostgreSQL installation complete."
