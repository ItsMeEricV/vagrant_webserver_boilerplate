#
# Cookbook Name:: webserver-config
# Recipe:: default
#
# Copyright (C) 2014 Eric Vierhaus
#
# All rights reserved - Do Not Redistribute
#


## Create the nginx configuration file using the webserver.erb template file. 
## Rename /sites-available/web as needed by your system
template "#{node['nginx']['dir']}/sites-available/default" do
  source "webserver.erb"
  cookbook "webserver-config"
  action :create
end


## Optional configuration

## create the symlink for nginx to activate a virtual host called "web"
# link "#{node['nginx']['dir']}/sites-enabled/web" do
#   to "#{node['nginx']['dir']}/sites-available/web"
#   action :create
# end

## restart nginx
# service "nginx" do
#   action :restart
# end