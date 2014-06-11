#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
execute "apt-get update"
package "apache2" do
  action :install
end
