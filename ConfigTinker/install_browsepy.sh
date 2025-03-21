################################################
# Under GPL license
#     https://www.gnu.org/licenses/gpl.html
# Authors:	Patrick Dutoit
# On October 2018
# V0.1
################################################
#!/bin/bash -i
######
# Recherche du répertoire ConfigTinker
######
if [[ -z "$nafabox_path" ]]
then
	echo "Run first Pre_Install.sh and reload Terminal"
	exit
fi
dirinstall=${nafabox_path}

figlet -k Install BrowsePy
echo "================================================="
echo "================================================="
cd ${dirinstall}
# s'assurer que que pip est installe
sudo apt-get -y install python3-pip python3-setuptools 
sudo apt-get -y install pipx
# installer browsepy
# pip3 install scandir
# pip3 install backports.shutil_get_terminal_size
pipx install scandir backports.shutil_get_terminal_size git+https://github.com/dragonlost/browsepy.git
pipx ensurepath
# Lancer le serveur au demarrage
# placer la commande sous .config/autostart
#cat ${dirinstall}/browsepy.desktop | sed -e "s#MOI#${HOME}#g" > /tmp/browsepy.desktop
#mkdir -p ~/.config/autostart/
#sudo cp /tmp/browsepy.desktop $HOME/.config/autostart/browsepy.desktop
dir=/etc/systemd/system   #mettre le chemin du service en memoire
MOI=${USER}

sudo updatedb     # mettre à jour la base d'indexation

dir_browsepy="/home/${USER}/.local/bin/browsepy"  #récupérer le chemin du binaire browsepy

sudo rm /tmp/browsepy.service
echo -e '[Unit]\nDescription=Browsepy\nAfter=multi-user.target\n\n[Service]\nType=idle\nUser='${MOI}'\nExecStart=/home/'${MOI}'/.local/bin/browsepy --directory /home/'${MOI}' 0.0.0.0 8180\nRestart=always\nRestartSec=5\n[Install]\nWantedBy=multi-user.target' >> /tmp/browsepy.service

sudo rm ${dir}/browsepy.service
sudo cp /tmp/browsepy.service ${dir}/
sudo rm /tmp/browsepy.service
sudo chmod 644 ${dir}/browsepy.service

######
# enregistrer/lancer le service
######

sudo systemctl daemon-reload
sudo systemctl enable browsepy.service
sudo systemctl start browsepy.service


# fin


