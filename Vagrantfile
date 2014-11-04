VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  ### enable berkshelf
  config.berkshelf.enabled = true

  ### set the name of your Vagrant VM. Also shows up in the VirtualBox GUI
  config.vm.define "webserver_nginx" do |webserver_nginx|

    webserver_nginx.omnibus.chef_version = :latest

    ### Set the Vagrant virtual environment. By default Ubuntu 14.04 is used. Uncomment out lines as needed.
    webserver_nginx.vm.box = "ubuntu/trusty64" #Use Ubuntu 14.04
    #webserver_nginx.vm.box = "ubuntu/precise64" #Use Ubuntu 12.04

    ### Networking setup. Default is a private network using 192.168.60.100 IP address
    ### IMPORTANT: If you modify the IP then you must also modify the server_name property in the nginx configuration (the webserver.erb template)
    webserver_nginx.vm.network "private_network", ip: "192.168.60.100"
    # webserver_nginx.vm.network "forwarded_port", guest: 80, host: 8080 ##use port forwarding. For example, you would use http://localhost:8080
    # webserver_nginx.vm.network "public_network"  ##bridge to the public network of the host machine

    ### If true, then any SSH connections made will enable agent forwarding.
    # Default value: false
    # webserver_nginx.ssh.forward_agent = true

    ### Share an additional folder to the guest VM. By default we are mapping the code folder to /srv/website on the virtual machine
    webserver_nginx.vm.synced_folder "code", "/srv/website"

    # Enable provisioning with chef solo, specifying a cookbooks path, roles
    # path, and data_bags path (all relative to this Vagrantfile), and adding
    # some recipes and/or roles.
    #
    webserver_nginx.vm.provision "chef_solo" do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.roles_path = "roles"
      chef.data_bags_path = "data_bags"
      chef.add_role "webserver"
    end

  end

end
