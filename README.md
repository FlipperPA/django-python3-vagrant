# Django / Python

This is a Vagrant project for Django development.

This does not yet support berkshelf or librarian; all necessary repos are include in 'cookbooks'.

Prerequisites, all platforms:

* Virtualbox https://www.virtualbox.org/wiki/Downloads
* Vagrant http://downloads.vagrantup.com/

Pre-requisites,Windows only:

* git-bash
* ruby rvm

Fairly easy to get it running:

* vagrant up
* vagrant ssh djangovm
** (Note: You are now in the Virtualbox VM as superuser vagrant)
* sudo apt-get install python-pip
** (Note: PIP is a Python package manager)
* sudo pip install django

Starting a Django project:

* django-admin.py startproject django_project
* cd django_project
* python manage.py runserver [::]:8000

The VM is configured to use port forwarding. If everyone went right, you should be able to access the 
running server through the browser on your computer running the virtual machine at this url:

http://localhost:8001/

New to Django? Next steps? I highly recommend http://www.djangobook.com/en/2.0/

Feel free to reach out to me with any questions. - Tim Allen (tallen@wharton.upenn.edu)