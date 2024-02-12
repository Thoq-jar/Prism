#!/bin/bash

echo "---------------------------------------"
echo "Welcome to the Prism desktop installer!"
echo "Prism Developed by Thoq"
echo "---------------------------------------"
echo "Installer starting in 3 secs..."
sleep 3

# Install Depends
sudo apt install kwin
sudo apt install plank

# Copying files
sudo cp prism.sh /bin/
sudo cp prism.desktop /usr/share/xsessions

# Ask for reboot
read -p "Installation complete. Do you want to reboot now? (y/n): " choice
if [[ $choice == "y" || $choice == "Y" ]]; then
    sudo reboot
else
    echo "Installation completed! You can reboot later if needed."
fi
