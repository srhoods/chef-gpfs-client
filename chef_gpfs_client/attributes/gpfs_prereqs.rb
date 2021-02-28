packages = []

if platform_family?('rhel')
  packages = [
    'ksh',
    'm4',
    'net-tools',
    'kernel-devel',
    'kernel-headers',
    'cpp',
    'gcc',
    'gcc-c++',
  ]
end

default['gpfs_client']['prereqs'] = packages
