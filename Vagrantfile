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
  
  config.vm.network "forwarded_port", guest: 80, host: 8080
  #forwarding del puerto 80 al 8080 del host
     
  config.vm.synced_folder ".", "/vagrant"
  #Mapero de la carpeta del proyecto a la VM
  
  config.vm.provision "file", source: "Configs/devops.site.conf", destination: "/tmp/devops.site.conf"
  #Orden de copiar el archivo de configuracion de apache

  config.vm.provision :shell, path: "Vagrant.bootstrap.sh", run: "always"
  #Ejecucion del archivo que genera el despliegue de la app

end
