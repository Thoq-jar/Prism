#!/bin/bash

echo "-------------------------------------"
echo "Prism Rev.1 Setup | Developed by Thoq"
echo "-------------------------------------"

echo " "
echo " "

function apt_install {
    echo "Installing with APT..."
    bash ./Include/apt_install.sh
}

function pacman_install {
    echo "Installing with Pacman..."
    bash ./Include/arch_install.sh
}

function dnf_install {
    echo "Installing with DNF..."
    bash ./Include/dnf_install.sh
}

function apt_uninstall {
    echo "Uninstalling with APT..."
    bash ./Include/apt_uninstall.sh
}

function pacman_uninstall {
    echo "Uninstalling with Pacman..."
    bash ./Include/arch_uninstall.sh
}

function dnf_uninstall {
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

