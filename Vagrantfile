# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "centos/7"
  config.vm.network :private_network, ip: "192.168.56.100",
      virtualbox__intnet: "DHCPScope"
  config.vm.provision "shell", privileged: false, path: "setup.sh"
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end
end
