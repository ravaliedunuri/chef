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

package  'git' do
action   :install
end

git '/var/www/html' do
repository 'https://github.com/demoglot/html-samples-food.git' 
action  :sync
end

service 'httpd' do
action [:start, :enable]
end
 
