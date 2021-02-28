packages = []

if platform_family?('rhel')
  packages = [
    'gpfs.adv',
    'gpfs.base',
    'gpfs.callhome-ecc-client',
    'gpfs.compression',
    'gpfs.crypto',
    'gpfs.docs',
    'gpfs.gpl',
    'gpfs.gskit',
    'gpfs.java',
    'gpfs.license.dm',
    'gpfs.msg.en_US',
  ]
end

default['gpfs_client']['packages'] = packages
