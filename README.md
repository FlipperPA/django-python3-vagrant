# Python 3.4, 2.7, and virtualenvwrapper with MySQL and SQL Server Drivers

This is a Vagrant project for Python / Django development. It should be ready to go for Django development use with a core suite of tools, like virtualenv and virtualenvwrapper, defaulted to Python v3.4. Python 2.7 is only included in case you need it.

Also included are drivers and packages for connecting to both MySQL and MS SQL Server, since these aren't as nicely documented as PostgreSQL and SQLite.

Prerequisites, all platforms:

* Virtualbox: https://www.virtualbox.org/wiki/Downloads
* Vagrant: http://downloads.vagrantup.com/
* git-bash (Windows Only):

Fairly easy to get it running: first, checkout the repository to your machine.

* git clone https://github.com/FlipperPA/djangovagrant.git
* cd djangovagrant && vagrant up

Starting a Django project (/vagrant on the guest VM with be mounted to the directory with the Vagrantfile where you ran "vagrant up" on your local machine: you will be able to edit files on the local machine in this directory, which will automatically appear in /vagrant on the guest VM):

* cd /vagrant
* mkvirtualenv django_project
* pip install django
* django-admin.py startproject django_project
* cd django_project
* python manage.py runserver [::]:8000

You will see that a directory called "django_project" has also been created on your local machine, as a subdirectory of the directory which contains the Vagrantfile.

The VM is configured to use port forwarding. If everything went right, you should be able to access the running development server on your machine through a browser at this url:

http://localhost:8001/

New to Django? Here are some excellent resources, check them out, as one size does not fit all for learning:

* The Django Project Documentation: https://docs.djangoproject.com/
* The Django Polling Project Tutorial (a rite of passing in the Django community): https://docs.djangoproject.com/en/1.8/intro/tutorial01/
* Getting Started With Django: http://gettingstartedwithdjango.com/
* Tango With Django (a more advanced walk-through): http://www.tangowithdjango.com/
* Coding standard: use PEP-8, except for limiting line length to 79 chars: http://legacy.python.org/dev/peps/pep-0008/
* Django Best Practices: http://lincolnloop.com/django-best-practices/

Feel free to reach out to me with any questions. - Tim Allen (tallen@wharton.upenn.edu)
