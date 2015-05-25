# General config
default[:app] = {}
default[:app][:rails_env] = 'production'
default[:app][:name] = 'railsapp'
default[:app][:ruby_ver] = 'ruby-2.1.5'
default[:app][:ruby_gemset] = node[:app][:name]
default[:app][:deploy_to] = "/var/www/#{node[:app][:name]}"
default[:app][:current_path] = 'current'
default[:app][:shared_path] = 'shared'

default[:app][:app_path] = "#{node[:app][:deploy_to]}/#{node[:app][:current_path]}"
default[:app][:config_path] = "#{node[:app][:deploy_to]}/#{node[:app][:shared_path]}/config"
default[:app][:pids_path] = "#{node[:app][:deploy_to]}/#{node[:app][:shared_path]}/pids"
default[:app][:sockets_path] = "#{node[:app][:deploy_to]}/#{node[:app][:shared_path]}/sockets"
default[:app][:logs_path] = "#{node[:app][:deploy_to]}/#{node[:app][:shared_path]}/log"
default[:app][:rvm_path] = '/usr/local/rvm/scripts/rvm'
default[:app][:services_path] = '/etc/init.d'
