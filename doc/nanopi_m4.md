# NAFABox (Nomad Astronomy For All)

Script d'installation pour Créer une NAFABox.

Ces scripts sont compatibles avec la carte NanoPi-M4 .   
Les scripts ont été testés avec Ubuntu Bionic (18.04 LTS) et Ubuntu Focal (20.04 LTS).  
Il est recomandé d'utiliser **Ubuntu Focal (20.04 LTS)**.

Il est nécessaire de disposer d'au moins 10Go d'espace de stockage ou d'une Carte SD de 16Go au minimum ( index d'astrométrie non compris)  

**ATTENTION :** Vérifier que les mises à jour automatiques sont désactivées afin qu'elles n'interfèrent pas avec les scripts.


### Etape par étape pour une carte compatible avec Armbian):

1/ Installer la distribution ARMBIAN (version current Focal) via Etcher.

https://redirect.armbian.com/nanopim4/Focal_current_xfce

Puis démarrer l'image et suivez la procédure d'installation standard (Attention: par défaut Armbian en QWERTY)

**ATTENTION** Il faut redémarer la carte avant toute manipulation (apres l'installation auto de armbian)   

2/ Télécharger :  https://github.com/dragonlost/NAFABox/archive/master.zip  
ou  
2bis/ Dans votre home : `git clone https://github.com/dragonlost/NAFABox.git`

3/ Décompresser le fichier zip ( juste pour 2/)

4/ Ouvrez le dossier ainsi créé

5/ lancer **Pre_Install.sh** dans un terminal (avec un clic droit dans le dossier)

`$ ./Pre_Install.sh` 
( Pour un clavier Francais AZERTY : `:!Pre°Instqll:sh` )

Vous pouvez choisir d'installer la langue francaise et le clavier si ce n'est pas déjà fait. 

6/ Une fois le script __Pre_Install__ fini, fermer le terminal puis redémarer.

__Si vous avez modifié la langue,__ le systeme vas vous proposer de renomé les dossiers utilisateurs, accepter puis redémarer. A cause du mode de fonctionnement, après le redémarage, il faut suprimer l'ancien dossier correspondant au bureau ( supprimer le dossier Desktop pour un passage d'anglais au français).    
__Attention__ Ne pas supprimer le dossier __Desktop__ si c'est le seul présent.

ouvrir un nouveau terminal.

Lancer une mise a jour :   
`$ sudo apt update`    
`$ sudo apt upgrade -y`    
redémarer

ouvrir un nouveau terminal.    
Lancer __Install.sh__

`$ ./Install.sh` 
( Pour un clavier Francais AZERTY : `:!Instqll:sh` ) 

7/ répondez aux questions lorsque vous y êtes invité, et entrez votre mot de passe quand c'est demandé, remplissez les menus si nécessaire.

8/ Quand tout est fini vous pouvez redémarrer.


La fonction RTC est intégré au NanoPi-M4 il faut juste connecter une pile sur le connecteur sité derrière le port ethernet.    
lien vers une pile : https://www.ebay.fr/itm/Pile-BIOS-CMOS-RTC-battery-Clock-Akku-Batteria-CR2032-3V-KTS-Acer-HP-/382140650592    


### Documentation pour créer un HotSpot sur Armbian :  
https://github.com/dragonlost/NAFABox/blob/master/doc/Install_Hotspot_Armbian.md   

### Documentation pour le mappage persistant pour les péripheriques serial/usb (en anglais):   
https://indilib.org/support/tutorials/157-persistent-serial-port-mapping.html

### Documentation pour le changement de kernel sur Armbian :
https://github.com/dragonlost/NAFABox/blob/master/doc/Switch_kernel_armbian.md

### Documentation activation acceleration graphique :
https://github.com/dragonlost/NAFABox/blob/master/doc/tuto_acceleration_graphique_nanopim4.md

### pour récupérer une image toute faite de la NAFABox :   
https://share.obspm.fr/index.php/s/WowXMAZkHPd3K9j

**Miroir pour les dernières versions :**  
https://1drv.ms/f/s!AlFrxWojM_Hflr0R80wOKHzWQMI88g    
https://drive.google.com/drive/folders/19rKybLnewPy2NaOpZ7BoXR5x_koXWGFJ?usp=sharing  

### Tuto pour utiliser les images :   
https://nafabox.linux-astro.fr/#images

