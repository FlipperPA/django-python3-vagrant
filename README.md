# Django / Python with MySQL and SQL Server Drivers

This is a Vagrant project for Django development. It will download the most current version of Django with pip, and includes certain must-have apps and plugins, like South for database migration, python-mysql, pyodbc, python-ldap, Haystack for search, etc.

This does not yet support berkshelf or librarian: all necessary repos are included in 'cookbooks'.

Prerequisites, all platforms:

* Virtualbox: https://www.virtualbox.org/wiki/Downloads
* Vagrant: http://downloads.vagrantup.com/
* Chef Client: http://www.getchef.com/chef/install/ 

Fairly easy to get it running: first, checkout the repository to your machine.

* git clone --recursive ssh://git@stash.wharton.upenn.edu:7999/vagrant/django_dev.git django_dev

If you have already cloned from git without the "--recursive", from the root of the repository:

* git submodule update --init --recursive

Then, on to Vagrant:

* vagrant up
* vagrant ssh django_dev

Starting a Django project (/vagrant on the guest VM with be mounted to the directory with the Vagrantfile where you ran "vagrant up" on your local machine: you will be able to edit files on the local machine in this directory, which will automatically appear in /vagrant on the guest VM):

* cd /vagrant
* django-admin.py startproject django_project
* cd django_project
* python manage.py runserver [::]:8000

You will see that a directory called "django_project" has also been created on your local machine, as a subdirectory of the directory which contains the Vagrantfile.

The VM is configured to use port forwarding. If everything went right, you should be able to access the running development server on your machine through a browser at this url:

http://localhost:8001/

New to Django? Here are some excellent resources, check them out, as one size does not fit all for learning:

* The Django Project Documentation: https://docs.djangoproject.com/en/1.6/
* The Django Polling Project Tutorial (a rite of passing in the Django community): https://docs.djangoproject.com/en/1.6/intro/tutorial01/
* Getting Started With Django: http://gettingstartedwithdjango.com/
* Tango With Django (a more advanced walk-through): http://www.tangowithdjango.com/
* Coding standard: use PEP-8, except for limiting line length to 79 chars: http://legacy.python.org/dev/peps/pep-0008/
* Django Best Practices: http://lincolnloop.com/django-best-practices/

Feel free to reach out to me with any questions. - Tim Allen (tallen@wharton.upenn.edu)
