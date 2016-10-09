#
# Cookbook Name:: dynamodb-local
# Recipe:: init
#
# Copyright (C) 2016 Thomas Claridge
#

config = node["dynamodb-local"]

directory config["log_dir"] do
  owner config["user"]
  group config["user"]
  action :create
end

template "/etc/init.d/dynamodb-local" do
  source 'initd.sh.erb'
  cookbook 'dynamodb-local'

  mode 0755

  action :create

  variables({
    :name => config["name"],
    :user => config["user"],
    :group => config["user"],
    :log_dir => config["log_dir"],
    :port => config["port"],
    :path => config["directory"]
  })
end

service "dynamodb-local" do
  provider Chef::Provider::Service::Init
  action [ :start ]
end

