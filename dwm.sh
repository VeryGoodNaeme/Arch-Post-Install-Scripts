#!/bin/sh
#install dependencies
sudo pacman -S base-devel xorg lightdm lightdm-gtk-greeter flameshot alacritty ranger fish rofi pipewire-audio pipewire-pulse wireplumber
sudo systemctl enable lightdm

#add dotfiles from github
git clone https://github.com/VeryGoodNaeme/Dotfiles
cd Dotfiles
mkdir ~/.dwm
mkdir ~/.config
cp -r ./dotconfig/generic ~/.config
cp -r ./dotdwm ~/.dwm
chmod +x ~/.dwm/autostart.sh
sudo cp dwm.desktop /usr/share/xsessions/dwm.desktop
cd ..

#install dwm
git clone https://github.com/VeryGoodNaeme/dwm-naeme
cd dwm-naeme/generic/gaps
sudo make install
