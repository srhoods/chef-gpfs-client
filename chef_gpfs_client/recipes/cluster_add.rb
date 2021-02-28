#
# Cookbook:: gpfs_client
# Recipe:: cluster_add
#
# Copyright:: 2021, The Authors, All Rights Reserved.

execute 'cluster_add1' do
  not_if { ::File.exist?('/var/adm/ras/mmfs.log.latest') }
  command "/usr/bin/ssh gpfsnsd1 /usr/lpp/mmfs/bin/mmaddnode -N #{node['hostname']}"
end

execute 'cluster_add2' do
  not_if { ::File.exist?('/var/adm/ras/mmfs.log.latest') }
  command "/usr/lpp/mmfs/bin/mmchlicense client --accept -N #{node['hostname']}"
end

execute 'cluster_add3' do
  not_if { ::File.exist?('/var/adm/ras/mmfs.log.latest') }
  command '/usr/lpp/mmfs/bin/mmstartup'
end
