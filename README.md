# Django / Python / MySQL

This is a Vagrant project for Django development. It is current with Django 1.6, and includes certain must-have
apps and plugins, like South for database migration, python-mysql, python-ldap, Haystack for search, etc.

This does not yet support berkshelf or librarian; all necessary repos are included in 'cookbooks'.

Prerequisites, all platforms:

* Virtualbox: https://www.virtualbox.org/wiki/Downloads
* Vagrant: http://downloads.vagrantup.com/
* Chef Client: http://www.getchef.com/chef/install/ 

Fairly easy to get it running; first, checkout the repository to your machine:

* git clone --recursive git@github.com:FlipperPA/djangovagrant.git django-dev

If you have already cloned from git without the "--recursive", from the root of the repository:

* git submodule update --init --recursive

Then, on to Vagrant:

* vagrant up
* vagrant ssh djangovm

Starting a Django project:

* django-admin.py startproject django_project
* cd django_project
* python manage.py runserver [::]:8000

The VM is configured to use port forwarding. If everything went right, you should be able to access the 
running server through the browser on your computer running the virtual machine at this url:

http://localhost:8001/

New to Django? Next steps? I recommend checking out project / application layout best practices here http://www.deploydjango.com/django_project_structure/. Then jump into creating and coding at http://www.tangowithdjango.com/ - it is more update than the free Django Book (for v1.5), and provides an excellent view of the framework.

Feel free to reach out to me with any questions. - Tim Allen (tallen@wharton.upenn.edu)