# -*- mode: ruby -*-
# vi: set ft=ruby :

# Archivo de configuracion Vagrant Grupo 8

Vagrant.configure("2") do |config|
  
  config.vm.provider "virtualbox" do |v|
   v.name = "Grupo8"
   v.memory = "1024"
  end
  #COnfig de la VM

  config.vm.box = "ubuntu/jammy64" 
  #box utilizada con ubuntu
  
  config.vm.hostname = "grupo8.localhost"
  config.vm.boot_timeout = 3600
  #config.vm.network "forwarded_port", guest: 80, host: 8080
  #forwarding del puerto 80 al 8080 del host

  config.vm.network "forwarded_port", guest: 8082, host: 8082, auto_correct: true #port Jenkings
  config.vm.network "forwarded_port", guest: 8140, host: 8140, auto_correct: true #port Puppet
  config.vm.box_download_insecure = true
     
  config.vm.synced_folder ".", "/vagrant"
  #Mapero de la carpeta del proyecto a la VM
  config.vm.box_download_insecure = true  
  # Este comando transfiere un archivo desde la maquina host a la maquina cliente. 
  # Es para permitir el redireccionamiento de tráfico entre el máquina host y la vm
  config.vm.provision "file", source: "hostConfigs/ufw", destination: "/tmp/ufw"
  config.vm.provision "file", source: "hostConfigs/etc_hosts.txt", destination: "/tmp/etc_hosts.txt"
  # Archivos de Puppet
  config.vm.provision "file", source: "hostConfigs/puppet/site.pp", destination: "/tmp/site.pp"
  config.vm.provision "file", source: "hostConfigs/puppet/init.pp", destination: "/tmp/init.pp"
  config.vm.provision "file", source: "hostConfigs/puppet/init_jenkins.pp", destination: "/tmp/init_jenkins.pp"
  config.vm.provision "file", source: "hostConfigs/puppet/jenkins_dependencies.pp", destination: "/tmp/jenkins_dependencies.pp"
  config.vm.provision "file", source: "hostConfigs/puppet/puppet-master.conf", destination: "/tmp/puppet-master.conf"
  config.vm.provision "file", source: "hostConfigs/puppet/.env", destination: "/tmp/env"

  config.vm.provision :shell, path: "Vagrant.bootstrap.sh", run: "always"
  #Ejecucion del archivo que genera el despliegue de la app

    # Enable provisioning with a shell script. Additional provisioners such as
  # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
  # documentation for more information about their specific syntax and use.
  
#    config.vm.provision "shell", inline: <<-SHELL
#     apt-get update
#     apt-get upgrade -y
##     sudo apt install puppetmaster -y
 #    sudo apt install puppet -y
 #    systemctl start puppetserver
 #    systemctl enable puppetserver
 #    systemctl start puppet
 #    systemctl enable puppet
 #    
 #  SHELL

end
