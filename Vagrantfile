# -*- mode: ruby -*-
# vi: set ft=ruby 

Vagrant.configure(2) do |config|
  config.vm.define "xenial" do |xenial|
    xenial.vm.box = "xenial"
    
    xenial.vm.synced_folder "provision/salt", "/srv/salt"
    xenial.vm.synced_folder "provision/pillar", "/srv/pillar"

    xenial.vm.provision :salt do |salt|
      salt.masterless = true
      salt.bootstrap_options = "-p git -p python-pygit2"
      salt.minion_config = "provision/minion"
      salt.colorize = true
      salt.verbose = true
      salt.log_level = "warning" 
    end
  end
end
