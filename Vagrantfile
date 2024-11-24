# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  BOOTSTRAP_SCRIPT = "provision/shell/bootstrap.sh"
  BOOTSTRAP_PYTHON = "provision/shell/bootstrap_python.sh"
  BOOTSTRAP_DOCKER = "provision/shell/bootstrap_docker.sh"
  DOCKER_BUILD     = "provision/shell/docker_build.sh" 
  DOCKER_RUN       = "provision/shell/docker_run.sh" 

  config.vm.box      = "bento/ubuntu-24.04"
  config.vm.hostname = "flasklab"


  config.vm.provision "bootstrap",        type: :shell, path: BOOTSTRAP_SCRIPT
  config.vm.provision "bootstrap_python", type: :shell, path: BOOTSTRAP_PYTHON
  config.vm.provision "bootstrap_docker", type: :shell, path: BOOTSTRAP_DOCKER
  #config.vm.provision "docker_build",     type: :shell, path: DOCKER_BUILD
  #config.vm.provision "docker_run",       type: :shell, path: DOCKER_RUN

  # This is where our source code lives
  config.vm.synced_folder "provision/files/", "/vagrant", type: "nfs", version: 4, nfs_udp: false

  #config.vm.network "forwarded_port", guest: 5000, host: 8080
end
