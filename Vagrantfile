# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  BOOTSTRAP_SCRIPT = "provision/shell/bootstrap.sh"

  config.vm.box      = "bento/ubuntu-24.04"
  config.vm.hostname = "flasklab"


  config.vm.provision "bootstrap", type: :shell, path: BOOTSTRAP_SCRIPT
end
