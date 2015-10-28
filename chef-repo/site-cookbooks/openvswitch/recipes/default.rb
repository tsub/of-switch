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
