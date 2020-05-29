# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/bionic64"
  config.vm.provision :shell, path: "vagrant_prov.sh", privileged: false
  
  # If you'd rather use a shared directory, uncomment the following 
  # and just ignore the SWN repo that's cloned within the vagrant box.
  # You may need to adjust the first path to your local SWN directory.
  # See https://www.vagrantup.com/docs/synced-folders/basic_usage.html
  #
  # config.vm.synced_folder "../SWN/", "/home/vagrant/SWN-shared/"
end
