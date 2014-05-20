#!/bin/bash

# Install git for version control, pip for install python packages
/usr/bin/yes | sudo apt-get install git
/usr/bin/yes | sudo apt-get install python-pip

# Install Django + various other pip packages for Django
sudo pip install django
sudo pip install python-mysqldb
sudo pip install python-memcached
sudo pip install https://pyodbc.googlecode.com/files/pyodbc-3.0.7.zip
sudo pip install git+https://github.com/lionheart/django-pyodbc.git
sudo pip install South
sudo pip install django-haystack
sudo pip install git+https://github.com/Brown-University-Library/django-shibboleth-remoteuser.git
sudo pip install python-ldap
sudo pip install djangorestframework
sudo pip install markdown
sudo pip install django-filter
