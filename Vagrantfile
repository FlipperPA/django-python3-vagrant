Vagrant::Config.run do |config|
  config.vm.define :djangovm do |django_config|
    # Every Vagrant virtual environment requires a box to build off of.
    django_config.vm.box = "precise32"

    # The url from where the 'config.vm.box' box will be fetched if it
    # doesn't already exist on the user's system.
    django_config.vm.box_url = "http://files.vagrantup.com/precise32.box"

    # Forward a port from the guest to the host, which allows for outside
    # computers to access the VM, whereas host only networking does not.
    django_config.vm.forward_port 80, 8080
    django_config.vm.forward_port 8000, 8001

    # Enable provisioning with chef solo, specifying a cookbooks path (relative
    # to this Vagrantfile), and adding some recipes and/or roles.
    #
    django_config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "apt"
      chef.add_recipe "apache2::mod_wsgi"
      chef.add_recipe "build-essential"
      chef.add_recipe "git"
      chef.add_recipe "vim"
      chef.add_recipe "emacs"
      chef.add_recipe "python"
      chef.add_recipe "mysql"
    #
    #   # You may also specify custom JSON attributes:
    #   chef.json = { :mysql_password => "foo" }
    end
  end
end