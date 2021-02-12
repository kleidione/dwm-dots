#!/bin/bash

cp      -R {Wallpapers,.config,.scripts,.xinitrc,.bashrc,.Xresources} ~/
sudo cp -R {vimix,vimix-dark} /usr/share/themes/
sudo cp -R xorg.conf.d /etc/X11/
sudo cp -R dwm /usr/src/ ; cd /usr/src/dwm/ && sudo make clean install

sudo wget wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-icon-theme/master/install.sh | sh
sudo wget -qO- https://raw.githubusercontent.com/PapirusDevelopmentTeam/papirus-folders/master/install.sh | sh
sudo papirus-folders --color brown

exit
