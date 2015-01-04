# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Vagrant Test by sakai

  #config.vm.box = "hashicorp/precise32"
  config.vm.box = "opscode-centos-6.5"

	config.vm.define "web" do |web|

		# NETWORK
		web.vm.network "forwarded_port", guest: 80, host: 8080
    web.vm.network "private_network", ip: "192.168.50.4",
      virtualbox__intnet: "test"

		# PROVISIONING
		web.omnibus.chef_version = :latest
		web.vm.provision "chef_solo" do |chef|
			chef.cookbooks_path = "./chef/site-cookbooks"
			chef.add_recipe "apache"
		end
  end




  #config.vm.network "forwarded_port", guest: 80, host: 8080
  
  
  ## provision test
  
  # shell
  #config.vm.provision "shell", path: "provision.sh"
  
  # chef-solo
  #config.vm.provision "chef_solo" do |chef|
  #  chef.add_recipe "apache"
  #end
  
  # puppet apply
  #config.vm.provision "puppet"
  
  # inline
#  config.vm.provision "shell", inline: "touch /tmp/testtest"


  ## network test
#  config.vm.network "private_network", ip: "192.168.50.4", 
#    virtualbox__intnet: "mynetwork"
#    #virtualbox__intnet: true


end
