#
# Cookbook:: gpfs_client
# Recipe:: setup_repo
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Setup GPFS Repo
yum_repository 'gpfs' do
  description 'GPFS Repo 5.0.5.3'
  baseurl 'ftp://192.168.1.41/pub/repo/'
  gpgcheck false
  enabled true
  action :create
end
