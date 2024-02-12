#!/bin/bash
clear
echo "---------------------------------------"
echo "Welcome to the Prism desktop uninstaller!"
echo "Prism Developed by Thoq"
echo "---------------------------------------"
echo "Uninstaller starting in 3 secs..."
sleep 3

# Uninstall Dependencies
echo "---------------------------------------"
echo "Uninstalling Depends..."
echo "---------------------------------------"

# Removing files
echo "---------------------------------------"
echo "Uninstalling files..."
echo "---------------------------------------"
sudo rm -rf /bin/prism.sh
sudo rm -rf /usr/share/xsessions/prism.desktop
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
    echo "Developed by Thoq | Sorry to see you go!"
    echo "Please log out or reboot to complete the uninstall!"
    echo "Shutting down installer in 1 minute"
    echo "---------------------------------------"
    sleep 60
fi

