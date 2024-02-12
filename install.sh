#!/bin/bash

echo "The installer only works with Apt atm..."

sudo rm -rf Prism
sleep 1
sudo apt install kwin --no-install-recommends
sleep 1
sudo apt install plank
sleep 1
sudo apt install lxqt-panel
sleep 1
sudo add-apt-repository ppa:agornostal/ulauncher && sudo apt update && sudo apt install ulauncher
sleep 1
git clone # PLACEHOLDER
sleep 1
cd Prism
sleep 1
sudo cp prism_de.sh /bin/
sleep 1
sudo cp prism_de.desktop cd /usr/share/xsessions
sleep 1

echo "Please log out and select 'Prism' to complete installation!"
