default['gocd']['backup_path'] = ''
default['gocd']['backup_retrieval_type'] = 'subversion'

default['gocd']['agent']['auto_register']         = false
default['gocd']['agent']['auto_register_key']     = 'default_auto_registration_key'
default['gocd']['agent']['auto_register_resources'] = []
default['gocd']['agent']['auto_register_environments'] = []

# Install this many agent instances on a box - default is one per CPU

default['gocd']['agent']['instance_count'] = node['cpu']['total']
default['gocd']['agent']['server_search_query'] =
  "chef_environment:#{node.chef_environment} AND recipes:go\\:\\:server"


default['gocd']['version']                          = '15.2.0-2248'
force_default['java']['jdk_version']  = '7'

unless platform?('windows')
  default['gocd']['agent']['java_home']             = '/usr/bin/java'
  default['gocd']['agent']['work_dir_path']         = '/var/lib'
end

default['gocd']['server']['install_path'] = 'C:\Program Files (x86)\Go Server'