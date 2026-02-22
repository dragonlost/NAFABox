################################################
# Under GPL license
#     https://www.gnu.org/licenses/gpl.html
# Authors:	Patrick Dutoit
# 			Laurent Roge
# On June 10 2017
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

figlet -k Install CCDciel
echo "================================================="
echo "================================================="
######
# Installation des pré-requis
######

######
# détection de l'architecture
######
source $dirinstall/proctype.sh

# install libpasastro
$dirinstall/install_libpasastro.sh
sudo apt-get -y install libpango-1.0-0 xplanet espeak libpasraw

install_method="ppa" #or sourceforge

if [[ ${install_method} == "ppa" ]]
then
  ######
  # install via "PPA" outdate
  ######
  bash <(wget -qO- https://raw.githubusercontent.com/pchev/skychart/master/setup_skychart_deb.sh) 
  sudo apt-get update

  sudo apt-get -y install ccdciel indistarter eqmodgui
fi

if [[ ${install_method} == "sourceforge" ]]
then
  ######
  # install via sourceforge
  ######

  # install indistarter via sourceforge

  software="indistarter"

  #need update
  version="2.5.2"
  subversion="234"

  file="$software""_$version""-$subversion""$proc.deb"
  wget https://sourceforge.net/projects/$software/files/$software-$version/$file -P /tmp
  sudo apt-get -y install /tmp/$file

  # install eqmodgui via sourceforge

  software="eqmodgui"

  #need update
  version="$software""_""1.8.0"
  subversion="163"

  file="$version""-$subversion""$proc.deb"
  wget https://sourceforge.net/projects/$software/files/$version/$file -P /tmp
  sudo apt-get -y install /tmp/$file

  # Installation de ccdciel

  software="ccdciel"

  #need update
  version="$software""_""0.9.93"
  subversion="3961"

  file="$version""-$subversion""$proc.deb"
  wget https://sourceforge.net/projects/$software/files/$version/$file -P /tmp/
  sudo apt-get -y install /tmp/$file
fi

######
# Création de l'icône sur le bureau
######
${dirinstall}/install_shortcut.sh APPNAME="ccdciel" OPTION="1" TERMINAL="false"

