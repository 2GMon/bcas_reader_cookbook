#
# Cookbook Name:: bcas_reader
# Recipe:: default
#
# Copyright 2014, Takaaki TSUJIMOTO
#
# All rights reserved - Do Not Redistribute
#

%w!pcscd libpcsclite-dev!.each do |pkg|
  package pkg do
    action :install
  end
end

cookbook_file "/etc/libccid_Info.plist" do
  source "libccid_Info.plist"
  owner "root"
  group "root"
  mode 0644
  notifies :restart, 'service[pcscd]'
end

service "pcscd" do
  action [:enable, :start]
  supports status: true, restart: true
end
