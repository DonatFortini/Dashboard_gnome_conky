#!/bin/bash
echo "Début de l'installation"
sudo mv /etc/Dashboard_gnome_conky/ /etc/conky/
sudo chmod 777 -R /etc/conky/
echo "Télechargement des dépandances"
sudo add-apt-repository "deb http://ppa.launchpad.net/ubuntuhandbook1/conkymanager2/ubuntu focal main"
sudo apt install conky -y && sudo apt install conky-manager2 -y
sudo apt update
echo "Télechargement des dépandances terminé"
echo "Télechargement des polices"
echo "Télechargement Fira code"
unzip Fira_Code.zip -d Fira_Code
rm -R Fira_Code.zip
mv Fira_Code /usr/share/fonts/truetype/
echo "Télechargement DS-Digital"
wget  https://dl.dafont.com/dl/?f=ds_digital
mv index.html?f=ds_digital ds_digital
mv ds_digital /usr/share/fonts/truetype/ 
echo "Télechargement des polices terminé"
echo "Installation terminé"
echo "Lancement de conky-manager2"
conky-manager2 

