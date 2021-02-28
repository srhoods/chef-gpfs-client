#
# Cookbook:: gpfs_client
# Recipe:: default
#
# Copyright:: 2021, The Authors, All Rights Reserved.
#

include_recipe 'gpfs_client::install_packages'
include_recipe 'gpfs_client::setup_repo'
include_recipe 'gpfs_client::install_client'
include_recipe 'gpfs_client::client_tuning'

# execute 'mmbuildgpl' do
#   command '/usr/lpp/mmfs/bin/mmbuildgpl'
# end

include_recipe 'gpfs_client::cluster_add'
