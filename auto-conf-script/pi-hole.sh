#!/bin/bash$

#This BASH script will install Pi-Hole and start the auto-install script.

read -r -p "Are you sure you want to install pi-hole on this machine  ?? [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
       
       git clone --depth 1 https://github.com/pi-hole/pi-hole.git Pi-hole
       
       cd "Pi-hole/automated install/"
      
       sudo bash basic-install.sh



        ;;
    *)
        echo If Pi-Hole has not been installed correctly than press. Y / Yes
        ;;
esac
