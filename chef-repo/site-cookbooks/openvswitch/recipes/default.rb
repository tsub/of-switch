#
# Cookbook Name:: openvswitch
# Recipe:: default
#
# Copyright 2015, Tsubasa Takayama
#
# All rights reserved - Do Not Redistribute
#

package 'openvswitch-switch' do
  action :install
end

service 'openvswitch-switch' do
  action [:start, :enable]
  supports start: true, status: true, restart: true, reload: true
end

template 'br1' do
  path '/etc/network/interfaces.d/br1'
  source 'br1.erb'
  mode 0644
  owner 'root'
  group 'root'
end
