# Django / Python

This is a Vagrant project for Django development.

This does not yet support berkshelf or librarian; all necessary repos are include in 'cookbooks'.

Pre-requisites (All platforms):
(1) Virtualbox https://www.virtualbox.org/wiki/Downloads
(2) Vagrant http://downloads.vagrantup.com/

Pre-requisites (Windows only):
(1) git-bash
(2) ruby rvm

Fairly easy to get it running:

(1) vagrant up
(2) vagrant ssh djangovm
-- You are now in the Virtualbox VM as superuser vagrant --
(3) sudo apt-get install python-pip
-- PIP is a Python package manager --
(4) sudo pip install django

Starting a Django project:
(1) django-admin.py startproject django_project
(2) cd django_project
(3) python manage.py runserver [::]:8000

The VM is configured to use port forwarding. If everyone went right, you should be able to access the 
running server through the browser on your computer running the virtual machine at this url:

http://localhost:8001/

New to Django? Next steps? I highly recommend http://www.djangobook.com/en/2.0/

Feel free to reach out to me with any questions. - Tim Allen (tallen@wharton.upenn.edu)