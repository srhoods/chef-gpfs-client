#
# Cookbook:: gpfs_client
# Recipe:: install_client
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Install GPFS Packages
node['gpfs_client']['packages'].each do |pkg|
  package pkg do
    action :install
  end
end
