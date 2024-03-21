#!/bin/bash

# Instala o xorg + extras:
pacman -S --noconfirm xorg-server xorg-xinit xorg-xkill xorg-xsetroot xorg-xrandr

# Instala aplicações:
pacman -S --noconfirm wget git curl p7zip engrampa ntfs-3g hdparm mtools dosfstools cups cpio the_silver_searcher gvfs gvfs-mtp xdg-user-dirs xdg-utils thunar thunar-archive-plugin thunar-media-tags-plugin thunar-volman tumbler nano pluma ristretto xfce4-screenshooter xfce4-terminal neofetch dmenu hsetroot xcompmgr numlockx pywal firefox-i18n-pt-br polkit-gnome lxappearance vlc qbittorrent

# Copia arquivos e configurações:
cp -R {Wallpapers,.config,.scripts,.xinitrc,.bashrc,.Xresources} ~/
sudo cp -R {vimix,vimix-dark} /usr/share/themes/
sudo cp -R xorg.conf.d /etc/X11/
sudo cp -R dwm /usr/src/ ; cd /usr/src/dwm/ && sudo make clean install

wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sudo sh
wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-folders/master/install.sh | sudo sh
sudo papirus-folders --color brown

exit
