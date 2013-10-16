# Django / Python / MySQL

This is a Vagrant project for Django development.

This does not yet support berkshelf or librarian; all necessary repos are included in 'cookbooks'.

Prerequisites, all platforms:

* Virtualbox https://www.virtualbox.org/wiki/Downloads
* Vagrant http://downloads.vagrantup.com/

Pre-requisites, Windows only:

* git-bash
* ruby rvm

Fairly easy to get it running:

* vagrant up
* vagrant ssh djangovm
** (Note: You are now in the Virtualbox VM as superuser vagrant)
* sudo apt-get install python-pip
** (Note: PIP is a Python package manager)
* sudo apt-get install python-mysqldb
* sudo pip install django

Starting a Django project:

* django-admin.py startproject django_project
* cd django_project
* python manage.py runserver [::]:8000

The VM is configured to use port forwarding. If everything went right, you should be able to access the 
running server through the browser on your computer running the virtual machine at this url:

http://localhost:8001/

New to Django? Next steps? I recommend checking out project / application layout best practices here http://www.deploydjango.com/django_project_structure/. Then jump into creating and coding at http://www.tangowithdjango.com/ - it is more update than the free Django Book (for v1.5), and provides an excellent view of the framework.

Feel free to reach out to me with any questions. - Tim Allen (tallen@wharton.upenn.edu)