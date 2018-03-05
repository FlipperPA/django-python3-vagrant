# DEPRECATED! Please read!

This Vagrant box is very out of date. However, I've developed a Vagrant box with some colleagues at work. It is CentOS instead of Ubuntu (since we use that at work), but includes current versions of Python (3.5 and 3.6), and is Ansiblized.

You can see the much improved Vagrant box here:

https://github.com/wharton/python-vagrant-centos7/

## django-python3-vagrant with FreeTDS for SQL Server 1.1

Ships with Python 3.4, 2.7, and virtualenvwrapper

This is a Vagrant Ubuntu Linux environment created for Python / Django developers. It should be ready to go for Django development use with a core suite of tools, like virtualenv and virtualenvwrapper, defaulted to Python v3.4. Python 2.7 is only included in case you need it.

Also included is an optional install for FreeTDS and unixODBC, which will allow you to connect to Microsoft SQL Server.

### Prerequisites

* Virtualbox: https://www.virtualbox.org/wiki/Downloads
* Vagrant: http://downloads.vagrantup.com/
* (Windows Only) git-bash, git GUI: https://git-for-windows.github.io/

### Installation and Login

Fairly easy to get it running: first, checkout the repository to your machine.

    git clone https://github.com/FlipperPA/django-python3-vagrant.git
    cd django-python3-vagrant && vagrant up

Then, SSH into your new virtual machine:

    vagrant ssh

### Installing FreeTDS for SQL Server (Optional)

Run the follow commands to install all pre-requesites and put your configuration files in the proper place.

    cd /vagrant/examples
    ./install-mssql.sh

Next, you need to enter your server information, by editing the following two files:

    /etc/freetds/freetds.conf
    /etc/odbc.ini

### Start Your Django Project

Then following instructions will be included each time you SSH into your guest VM. Starting a Django project (/vagrant on the guest VM with be mounted to the directory with the Vagrantfile where you ran "vagrant up" on your local machine: you will be able to edit files on the local machine in this directory, which will automatically appear in /vagrant on the guest VM):

    cd /vagrant/projects
    mkvirtualenv django_project
    pip install django==1.9
    django-admin.py startproject django_project
    cd django_project
    python manage.py runserver 0.0.0.0:8000

You should now be able to see your initial Django site in a browser:

http://localhost:8000/

### Hooking Up Django to SQL Server (Optional)

In your virtualenv, install the required Python packages:

    pip install pyodbc==3.0.10
    pip install django-pyodbc-azure==1.9.0.1

Then, set up your DATABASES setting in your Django settings file:

    DATABASES = {
        'default': {
            'ENGINE': 'sql_server.pyodbc',
            'HOST': 'dbserver.domain.com',
            'PORT': '1433',
            'NAME': 'dbname',
            'USER': 'dbuser',
            'PASSWORD': 'dbpassword',
            'AUTOCOMMIT': True,
            'OPTIONS': {
                'driver': 'FreeTDS',
                'unicode_results': True,
                'host_is_server': True,
                'extra_params': 'tds_version=7.2',
            },
        },
    }

### Setting Up Your Hosts File (optional)

If you'd like to view the site in your browser at an address like http://vagrant:8001/, then on your host machine, add the following to the hosts file:

    192.168.99.100  vagrant

* Mac hosts file location: /private/etc/hosts
* Windows hosts file location: %SystemRoot%\system32\drivers\etc\hosts

### New to Django? Here are some excellent resources, check them out, as one size does not fit all for learning:

* The Django Project Documentation: https://docs.djangoproject.com/
* The Django Polling Project Tutorial (a rite of passing in the Django community): httsps://docs.djangoproject.com/en/1.8/intro/tutorial01/
* Getting Started With Django: http://gettingstartedwithdjango.com/
* Tango With Django (a more advanced walk-through): http://www.tangowithdjango.com/
* Coding standard: use PEP-8, except for limiting line length to 79 chars: http://legacy.python.org/dev/peps/pep-0008/
* Django Best Practices: http://lincolnloop.com/django-best-practices/

### v1.1

* Install Pygements and support for colorize `cat` command, `ccat`.
* Install Ubuntu package pre-requesities for Pillow and Wagtail installation.
* Latest version of pip installed for Python 3.

### v1.0

* Initial release.

Feel free to reach out to me with any questions. - Tim Allen (flipper@peregrinesalon.com)
