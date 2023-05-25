#!/bin/sh
#install dependencies
sudo pacman -S xorg lightdm lightdm-gtk-greeter awesome flameshot alacritty ranger fish rofi pipewire-audio wireplumber pipewire-pulse
sudo systemctl enable lightdm

#clone dotfiles from github
git clone https://github.com/VeryGoodNaeme/Dotfiles

#copy dotfiles to the config directory
cd Dotfiles
mkdir ~/.config
cp -r ./dotconfig ~/.config

