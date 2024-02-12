#!/bin/bash

echo "-------------------------------------"
echo "Prism Rev.1 Setup | Developed by Thoq"
echo "-------------------------------------"

echo " "

function apt_install {
    git clone https://github.com/Thoq-jar/Prism.git
    sudo mkdir /usr/share/backgrounds/Prism
    sudo cp prism_wallpaper.jpg /usr/share/backgrounds/Prism
    sudo cp prism_wallpaper.jpg /usr/share/backgrounds
    sleep 2
    echo "Installing with APT..."
    bash ./Include/apt_install.sh
}

function pacman_install {
     git clone https://github.com/Thoq-jar/Prism.git
    sudo mkdir /usr/share/backgrounds/Prism
    sudo cp prism_wallpaper.jpg /usr/share/backgrounds/Prism
    sudo cp prism_wallpaper.jpg /usr/share/backgrounds
    sleep 2
    echo "Installing with Pacman..."
    bash ./Include/arch_install.sh
}

function dnf_install {
    git clone https://github.com/Thoq-jar/Prism.git
    sudo mkdir /usr/share/backgrounds/Prism
    sudo cp prism_wallpaper.jpg /usr/share/backgrounds/Prism
    sudo cp prism_wallpaper.jpg /usr/share/backgrounds
    sleep 2
    echo "Installing with DNF..."
    bash ./Include/dnf_install.sh
}

function apt_uninstall {
    sudo rm -rf /usr/share/backgrounds/Prism
    sudo rm -rf /usr/share/backgrounds/prism_wallpaper.jpg
    sleep 2
    echo "Uninstalling with APT..."
    bash ./Include/apt_uninstall.sh
}

function pacman_uninstall {
    sudo rm -rf /usr/share/backgrounds/Prism
    sudo rm -rf /usr/share/backgrounds/prism_wallpaper.jpg
    sleep 2
    echo "Uninstalling with Pacman..."
    bash ./Include/arch_uninstall.sh
}

function dnf_uninstall {
    sudo rm -rf /usr/share/backgrounds/Prism
    sudo rm -rf /usr/share/backgrounds/prism_wallpaper.jpg
    sleep 2
    echo "Uninstalling with DNF..."
    bash ./Include/dnf_uninstall.sh
}
echo " "
echo " "
echo "----------------------------------------"
echo "Please select an option:"
echo "1. Install"
echo "2. Uninstall"
echo "----------------------------------------"
read -p "Enter your choice (1 or 2): " option

case $option in
    1)
    	echo " "
	echo " "
    	echo "-------------------------------------"
        echo "Please select your package manager for installation:"
        echo "1. APT"
        echo "2. Pacman"
        echo "3. DNF"
        echo "-------------------------------------"
        read -p "Enter your choice (1, 2, or 3): " choice
        case $choice in
            1)
                apt_install
                ;;
            2)
                pacman_install
                ;;
            3)
                dnf_install
                ;;
            *)
                echo "Invalid choice. Exiting..."
                ;;
        esac
        ;;
    2)
    	echo " "
	echo " "
    	echo "-------------------------------------"
        echo "Please select your package manager for uninstallation:"
        echo "1. APT"
        echo "2. Pacman"
        echo "3. DNF"
        echo "-------------------------------------"
        read -p "Enter your choice (1, 2, or 3): " choice
        case $choice in
            1)
                apt_uninstall
                ;;
            2)
                pacman_uninstall
                ;;
            3)
                dnf_uninstall
                ;;
            *)
                echo "Invalid choice. Exiting..."
                ;;
        esac
        ;;
    *)
        echo "Invalid choice. Exiting..."
        ;;
esac
