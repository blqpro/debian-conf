#!/bin/bash$
#install basic program for a fresh new minimal debian-based-distro config.

echo$ "install xvfb"
sudo apt-get install xvfb -y

echo$ "install xdm"
sudo apt-get install xdm -y

echo$ "install xfonts-base"
sudo apt-get install xfonts-base -y

echo$ "install libx11-dev"
sudo apt-get install libx11-dev -y

echo$ "install make"
sudo apt-get install make -y

echo$ "install htop"
sudo apt-get install htop -y

echo$ "install nano"
sudo apt-get install nano -y

echo$ "install nginx"
sudo apt-get install nginx -y

echo$ "install build-essential"
sudo apt-get install build-essential -y


read -r -p "Are you sure you want to change the .bashrc config file  ?? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
       
        cd ~/
        mkdir tempgit

        cd tempgit
        git clone https://github.com/blqpro/debian-conf.git       
        
        cd ~/
        sudo rm .bashrc

        cp ~/tempgit/debian-conf/.bashrc-server ~/.bashrc
        
        cd ~/
        sudo rm -rf tempgit
        

        ;;
    *)
        echo If you want to change the .bashrc file lunch this script again and say Y / Yes
        ;;
esac