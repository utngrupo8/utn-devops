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
  
  #config.vm.network "forwarded_port", guest: 80, host: 8080
  #forwarding del puerto 80 al 8080 del host

  config.vm.network "forwarded_port", guest: 8081, host: 8081, auto_correct: true
  config.vm.network "forwarded_port", guest: 4400, host: 4400, auto_correct: true
  config.vm.box_download_insecure = true
     
  config.vm.synced_folder ".", "/vagrant"
  #Mapero de la carpeta del proyecto a la VM
  
  # Este comando transfiere un archivo desde la maquina host a la maquina cliente. 
  # Es para permitir el redireccionamiento de tráfico entre el máquina host y la vm
  config.vm.provision "file", source: "hostConfigs/ufw", destination: "/tmp/ufw"

  config.vm.provision :shell, path: "Vagrant.bootstrap.sh", run: "always"
  #Ejecucion del archivo que genera el despliegue de la app

end
