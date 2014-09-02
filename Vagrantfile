VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  ### enable berkshelf
  config.berkshelf.enabled = true

  ### set the name of your Vagrant VM. Also shows up in the VirtualBox GUI
  config.vm.define "webserver_nginx" do |webserver_nginx|
  end

  ### Set the Vagrant virtual environment. By default Ubuntu 14.04 is used. Uncomment out lines as needed.
  config.vm.box = "ubuntu/trusty64" #Use Ubuntu 14.04
  #config.vm.box = "ubuntu/precise64" #Use Ubuntu 12.04

  ### Networking setup. Default is a private network using 192.168.60.100 IP address
  ### IMPORTANT: If you modify the IP then you must also modify the server_name property in the nginx configuration (the webserver.erb template)
  config.vm.network "private_network", ip: "192.168.60.100"
  # config.vm.network "forwarded_port", guest: 80, host: 8080 ##use port forwarding. For example, you would use http://localhost:8080
  # config.vm.network "public_network"  ##bridge to the public network of the host machine

  ### If true, then any SSH connections made will enable agent forwarding.
  # Default value: false
  # config.ssh.forward_agent = true

  ### Share an additional folder to the guest VM. By default we are mapping the code folder to /srv/website on the virtual machine
  config.vm.synced_folder "code", "/srv/website"

  # Enable provisioning with chef solo, specifying a cookbooks path, roles
  # path, and data_bags path (all relative to this Vagrantfile), and adding
  # some recipes and/or roles.
  #
  config.vm.provision "chef_solo" do |chef|
    chef.cookbooks_path = "cookbooks"
    chef.roles_path = "roles"
  #  chef.data_bags_path = "../my-recipes/data_bags"
    chef.add_role "webserver"
  #
  end



  # Enable provisioning with chef server, specifying the chef server URL,
  # and the path to the validation key (relative to this Vagrantfile).
  #
  # The Opscode Platform uses HTTPS. Substitute your organization for
  # ORGNAME in the URL and validation key.
  #
  # If you have your own Chef Server, use the appropriate URL, which may be
  # HTTP instead of HTTPS depending on your configuration. Also change the
  # validation key to validation.pem.
  #
  # config.vm.provision "chef_client" do |chef|
  #   chef.chef_server_url = "https://api.opscode.com/organizations/ORGNAME"
  #   chef.validation_key_path = "ORGNAME-validator.pem"
  # end
  #
  # If you're using the Opscode platform, your validator client is
  # ORGNAME-validator, replacing ORGNAME with your organization name.
  #
  # If you have your own Chef Server, the default validation client name is
  # chef-validator, unless you changed the configuration.
  #
  #   chef.validation_client_name = "ORGNAME-validator"
end
