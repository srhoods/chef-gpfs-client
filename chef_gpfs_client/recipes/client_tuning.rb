#
# Cookbook:: gpfs_client
# Recipe:: client_tuning
#
# Copyright:: 2021, The Authors, All Rights Reserved.

# Add the GPFS bin directory to the path
file '/etc/profile.d/gpfspath.sh' do
  content 'export PATH=$PATH:/usr/lpp/mmfs/bin'
  mode '0644'
  owner 'root'
  group 'root'
end
