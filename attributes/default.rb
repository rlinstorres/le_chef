# Default
default['le']['account_key'] = ''
default['le']['data_bag_name'] = 'le'
default['le']['data_bag_item_name'] = 'le'
default['le']['hostname'] = node['hostname']
default['le']['key'] = 'C43C79AD'

default['le']['logs_to_follow'] = [{name: 'syslog', log: '/var/log/syslog'}, {name: 'varlog', log: '/var/log/*.log'}]
#default['le']['logs_to_follow'] = [{name: 'syslog', log: '/var/log/syslog', token: '00000000-0000-0000-0000-000000000000'},{name: 'varlog', log: '/var/log/*.log', token: '00000000-1111-0000-0000-000000000000'}]

# Datahub
default['le']['datahub']['enable'] = false
default['le']['datahub']['server_ip'] = '127.0.0.1'
default['le']['datahub']['port'] = 10000

# Pull server side config
default['le']['pull-server-side-config'] = true

# PGP Key Server
case node['platform']
when 'debian', 'ubuntu'
  default['le']['pgp_key_server'] = 'keyserver.ubuntu.com'
else
  default['le']['pgp_key_server'] = 'pgp.mit.edu'
end
