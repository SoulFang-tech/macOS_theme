#!/bin/bash
tar -xf apple-redifined.tar.xz
pacman -Syyu plymouth
sudo mv apple-redifined /usr/share/plymouth/themes
sudo plymouth-set-default-theme -R apple-redifined
cd 
mkdir temprorary
cd temprorary 
git clone https://github.com/vinceliuice/WhiteSur-gtk-theme.git 
cd 'WhiteSur-gtk-theme'
./install.sh -s
./install.sh -t
./install.sh -g
git clone https://github.com/vinceliuice/WhiteSur-icon-theme.git
cd 'WhiteSur-icon-theme'
./install.sh
bash <(wget -qO- "https://raw.githubusercontent.com/ful1e5/apple_cursor/master/scripts/install.sh")
cd 
sudo rm -r temprorary
gnome-tweaks
