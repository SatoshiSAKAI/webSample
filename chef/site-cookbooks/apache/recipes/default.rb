#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
	action :install
end

service "httpd" do
	action [ :enable, :start]
end

execute "rm -rf /var/www/html"
link "/var/www/html" do
  to "/vagrant/html"
end

template "httpd.conf" do
	path "/etc/httpd/conf/httpd.conf"
	owner "root"
	group "root"
	mode 0644
	notifies :reload, 'service[httpd]'
end
