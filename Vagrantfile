# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  BOOTSTRAP_SCRIPT = "provision/shell/bootstrap.sh"
  BOOTSTRAP_PYTHON = "provision/shell/bootstrap_python.sh"
  BOOTSTRAP_DOCKER = "provision/shell/bootstrap_docker.sh"

  config.vm.box      = "bento/ubuntu-24.04"
  config.vm.hostname = "flasklab"


  config.vm.provision "bootstrap",        type: :shell, path: BOOTSTRAP_SCRIPT
  config.vm.provision "bootstrap_python", type: :shell, path: BOOTSTRAP_PYTHON
  config.vm.provision "bootstrap_docker", type: :shell, path: BOOTSTRAP_DOCKER

  config.trigger.after :provision do |trigger|
     config.vm.synced_folder "provision/files/", "/vagrant", type: "nfs", version: 4, nfs_udp: false
  end
end
