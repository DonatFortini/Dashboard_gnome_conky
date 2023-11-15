#!/bin/bash
echo "Début de l'installation"
sudo mv /etc/Dashboard_gnome_conky/ /etc/conky/
sudo chmod 777 -R /etc/conky/
echo "Télechargement des dépandances"
sudo add-apt-repository "deb http://ppa.launchpad.net/ubuntuhandbook1/conkymanager2/ubuntu focal main"
sudo apt install conky -y && sudo apt install conky-manager2 && sudo apt install acpi -y
sudo apt update
sudo rm conky.conf
sudo rm conky_no_x11.conf
echo "Télechargement des dépandances terminé"
echo "Télechargement des polices"
echo "Télechargement Fira code"
unzip Fira_Code.zip -d Fira_Code
sudo rm -R Fira_Code.zip
sudo mv Fira_Code /usr/share/fonts/truetype/
echo "Télechargement DS-Digital"
unzip ds_digital.zip -d ds_digital
sudo rm -R ds_digital.zip
sudo mv ds_digital /usr/share/fonts/truetype/
echo "Télechargement des polices terminé"
echo "Installation terminé"
echo "Lancement de conky-manager2"
conky-manager2 

