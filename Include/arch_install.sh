#!/bin/bash
clear
echo "---------------------------------------"
echo "Welcome to the Prism desktop installer!"
echo "Prism Developed by Thoq"
echo "---------------------------------------"
echo "Installer starting in 3 secs..."
sleep 3

# Clone repository
echo "---------------------------------------"
echo "Downloading Desktop Env from GitHub..."
echo "---------------------------------------"
git clone git@github.com:Thoq-jar/Prism.git
cd Prism
sleep 2

# Install Dependencies
echo "---------------------------------------"
echo "Installing Dependencies..."
echo "---------------------------------------"
sudo pacman -Syu --noconfirm kwin plank
sleep 2

# Copying files
echo "---------------------------------------"
echo "Installing files..."
echo "---------------------------------------"
sudo cp prism.sh /bin/
sudo cp prism.desktop /usr/share/xsessions
sleep 2

# Ask for reboot
read -p "Installation complete. Do you want to reboot now? (y/n): " choice
if [[ $choice == "y" || $choice == "Y" ]]; then
    echo "---------------------------------------"
    echo "Developed by Thoq | Thanks for installing!"
    echo "Rebooting in 5 secs!"
    echo "---------------------------------------"
    sleep 5
    sudo reboot
else
    echo "---------------------------------------"
    echo "Developed by Thoq | Thanks for installing!"
    echo "Please log out or reboot to complete Installation!"
    echo "Shutting down installer in 1 minute"
    echo "---------------------------------------"
    sleep 60
fi

