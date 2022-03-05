#!/bin/bash$

echo$ "install sudo if not installed"
apt install sudo 

echo$ "install update and upgrade"
sudo apt update && upgrade

echo$ "all package nedded for a  apche2 LAMP server"
sudo apt install php-mysqli php-mbstring php-curl php-gd php-simplexml php-intl php-ldap php-apcu php-xmlrpc php-cas php-zip php-bz2 php-ldap php-imap 
sudo apt install php-cgi php-pear php-gettext php-common php-phpseclib libapache2-mod-php


# Change the .bashrc config file.
read -r -p "Do you want to start the apache2 server test page [y/N] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
       
        a2enmod userdir
        systemctl restart apache2


        ;;
    *)
        echo Good work you have installed a LAMP server
        ;;
esac



