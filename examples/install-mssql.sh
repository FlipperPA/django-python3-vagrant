#!/bin/bash

# Install pre-requesite packages
sudo apt-get install unixodbc unixodbc-dev freetds-dev freetds-bin tdsodbc

# Copy example files to /etc
sudo cp /vagrant/examples/freetds.conf /etc/freetds
sudo cp /vagrant/examples/odbc.ini /etc
sudo cp /vagrant/examples/odbcinst.ini /etc
