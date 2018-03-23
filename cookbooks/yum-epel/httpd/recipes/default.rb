#
# Cookbook:: httpd
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package  'httpd' do
 action  :install
end

service 'httpd' do
  action [:start, :enable]
end

#package  'git' do
#  action   :install
#end

remote_directory '/var/www/html/' do
 source 'polyglot'
# owner 'root'
# group 'root'
# mode '0755'
 action  :create
end 

template '/etc/httpd/conf/httpd.conf' do
  source 'httpd.conf.erb'
end

service 'httpd' do
action [:start, :enable]
end
 
