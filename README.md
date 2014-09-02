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