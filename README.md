Vagrant Webserver Boilerplate
================================

A dead simple generic boilerplate for quickly getting a Vagrant-managed virtual machine up and running with a webserver. 

Instructions
-----------------

1. Install [Vagrant](https://www.vagrantup.com/downloads.html)
1. Install **Berkshelf** . To accomplish this you can either:
    - Install using the [Chef-DK](http://getchef.com/downloads/chef-dk)
    - Install directly from Rubygems: `gem install berkshelf` or add `gem 'berkshelf'` to your `Gemfile`
1. Install the [vagrant-berkshelf](https://github.com/berkshelf/vagrant-berkshelf) plugin: `vagrant plugin install vagrant-berkshelf`
1. Checkout this repo: `git checkout`
1. Run `berks install`. This step will download all the Chef cookbooks from the Chef Community into your Berkshelf location. By default, The Berkshelf is located at ~/.berkshelf. See [berkshelf.com](http://berkshelf.com) for more information.
1. (Optional) - Open the `Vagrantfile` and set attributes as needed. By default the VM will have:
    - Name: webserver_nginx
    - Operating System: Ubuntu 14.0.4 64 bit
    - IP Address: 192.168.60.100.
    - Website root: the `code` folder is synced to the VM as the website root
    - Chef configuration: Uses chef-solo to provision the VM
1. (Optional) - Modify the nginx webserver configuration. The `webserver.erb` file located at `vagrant_webserver_boilerplate/cookbooks/webserver-config/templates/default/webserver.erb` contains the nginx configuration
1. Run `vagrant up`. 
1. Open a web browser and navigate to 192.168.60.100. You should see a "Hello, Vagrant!" message if all went well.
1. If you make any changes to the configuration after running `vagrant up` then run `vagrant provision`


Continuing Development
--------------------
1. Begin editing the code in the _code_ folder
1. Read up on [Vagrant documentation](https://docs.vagrantup.com/v2/) to learn more Vagrant commands


Tested On
-----------------
- Mac OS 10.9.4, Vagrant 1.6.2, Berkshelf 3.1.5, vagrant-berkshelf 2.0.1