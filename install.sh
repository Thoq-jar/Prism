#!/bin/bash

echo "Prism DE developed by Thoq"
echo "The installer only works with Apt currently..."
echo "Installer starting in 3 secs..."

echo " "
echo " "

sleep 3

echo "Cleaning up old install if prevoiusly installed..."
sudo rm -rf Prism
sleep 0.3
sudo rm -rf /bin/prism.sh
sleep 0.3
sudo rm -rf /usr/share/xsessions/prism.desktop
sleep 1
echo "installing Depends..."
sudo apt install kwin --no-install-recommends
sleep 1
sudo apt install plank
sleep 1
sudo apt install lxqt-panel
sleep 1
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
sleep 1
echo "Downloading files..."
git clone https://github.com/Thoq-jar/Prism.git
sleep 1
echo "Accessing files..."
cd Prism
sleep 1
echo "Installing files..."
sudo cp prism_de.sh /bin/
sleep 1
sudo cp prism_de.desktop cd /usr/share/xsessions
echo "Completing install..."
sleep 1
echo "Cleaning up..."
echo " "

sleep 3

echo "Please log out and select 'Prism' to complete installation!"
echo "Thanks for installing!"

sleep 500
