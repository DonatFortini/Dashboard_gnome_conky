#!/bin/bash
sudo mv /etc/Dashboard_gnome_conky/ /etc/conky/
sudo chmod 777 -R /etc/conky/
echo "Télechargement des depanndances"
sudo add-apt-repository "deb http://ppa.launchpad.net/ubuntuhandbook1/conkymanager2/ubuntu focal main"
sudo apt install conky -y && sudo apt install conky-manager2 -y
sudo apt update
echo "Télechargement des polices"
unzip Fira_Code.zip -d Fira_Code
rm -R Fira_Code.zip
mv Fira_Code /usr/share/fonts/truetype/
wget  https://dl.dafont.com/dl/?f=ds_digital
mv index.html?f=ds_digital ds_digital
mv ds_digital /usr/share/fonts/truetype/ 
echo "Installation terminé"
conky-manager2 

