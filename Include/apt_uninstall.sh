#!/bin/bash
clear
echo "---------------------------------------"
echo "Welcome to the Prism desktop uninstaller!"
echo "Prism Developed by Thoq"
echo "---------------------------------------"
echo "Uninstaller starting in 3 secs..."
sleep 3

# Install Depends
echo "---------------------------------------"
echo "Uninstalling Depends..."
echo "---------------------------------------"
sleep 2

# Copying files
echo "---------------------------------------"
echo "Uninstalling files..."
echo "---------------------------------------"
cd /bin/
sudo rm -rf prism.sh
cd /usr/share/xsessions
sudo rm -rf prism.desktop
sleep 2

# Ask for reboot
read -p "Uninstallation complete. Do you want to reboot now? (y/n): " choice
if [[ $choice == "y" || $choice == "Y" ]]; then
    echo "---------------------------------------"
    echo "Developed by Thoq | Sorry to see you go!"
    echo "Rebooting in 5 secs!"
    echo "---------------------------------------"
    sleep 5
    sudo reboot
else
    echo "---------------------------------------"
    echo "Developed by Thoq | Sorry to se you go!"
    echo "Please log out or reboot to complete the uninstall!"
    echo "Shutting down installer in 1 minute"
    echo "---------------------------------------"
    sleep 60
fi
