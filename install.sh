sudo -s
chmod 777 -R /etc/conky/
apt install conky -y && apt install conky-manager2 -y
unzip Fira_Code.zip -d Fira_Code
rm -R Fira_Code.zip
mv Fira_Code /usr/share/fonts/truetype/
cd ~/Téléchargements
wget  https://dl.dafont.com/dl/?f=ds_digital
mv ~/Téléchargements/index.html?f=ds_digital ~/Téléchargements/ds_digital
mv ~/Téléchargements/ds_digital /usr/share/fonts/truetype/ 

