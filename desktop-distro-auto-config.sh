#!/bin/bash$
#install basic program for a fresh new debian-based-distro desktop config with gnome 3.

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

echo$ "install terminator"
sudo apt-get install terminator -y

echo$ "install neofetch"
sudo apt-get install neofetch -y

echo$ "install speedtest-cli"
sudo apt-get install speedtest-cli -y

echo$ "install nginx"
sudo apt-get install nginx -y

echo$ "install build-essential"
sudo apt-get install build-essential -y

echo$ "install arc-theme for gnome 3 DE/WM"
sudo apt-get install arc-theme

echo$ "install snap if not installed"
sudo apt-get install snap

echo$ "install ssh if not installed"
sudo apt-get install ssh

#Install extra SNAP software 
echo$ "install extra SNAP software"

read -r -p "Are you sure you want to install vscode//obs-studio//opera via SNAPSTORE ?? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        echo$ "install vscode obs-studio and opera-browser"
				snap install --classic code
				snap install obs-studio
				snap install opera
        ;;
    *)
        echo If you want to install vscode//obs-studio//opera lunch this script again and say Y / Yes
        ;;
esac


read -r -p "Are you sure you want to change the .bashrc config file  ?? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
       
        cd
        mkdir tempsgit

        cd tempsgit
        git clone https://github.com/blqpro/debian-conf.git       
        
        cd
        sudo rm .bashrc

        cp ~/tempsgit/debian-conf/.bashrc ~/.bashrc
        
        cd


        ;;
    *)
        echo If you want to change the .bashrc file lunch this script again and say Y / Yes
        ;;
esac



