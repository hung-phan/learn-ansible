# -*- mode: ruby -*-
# vi: set ft=ruby :

# This should put you at the control host
#  with access, by name, to other vms
Vagrant.configure(2) do |config|
  config.hostmanager.enabled = true

  config.vm.box = "ubuntu/trusty64"

  config.vm.provision "file", source: "~/.ssh/id_rsa.pub", destination: "~/.ssh/authorized_keys"
  config.ssh.private_key_path = ["~/.vagrant.d/insecure_private_key", "~/.ssh/id_rsa"]
  config.ssh.insert_key = false

  config.vm.define "control", primary: true do |h|
    h.vm.network "private_network", ip: "192.168.135.10"
  end

  config.vm.define "lb01" do |h|
    h.vm.network "private_network", ip: "192.168.135.101"
  end

  config.vm.define "app01" do |h|
    h.vm.network "private_network", ip: "192.168.135.111"
  end

  config.vm.define "app02" do |h|
    h.vm.network "private_network", ip: "192.168.135.112"
  end

  config.vm.define "db01" do |h|
    h.vm.network "private_network", ip: "192.168.135.121"
  end
end
