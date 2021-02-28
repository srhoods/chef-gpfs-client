#
# Cookbook:: gpfs_client
# Recipe:: install_packages
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Install prereq packages for GPFS
node['gpfs_client']['prereqs'].each do |pkg|
  package pkg do
    action :install
  end
end
