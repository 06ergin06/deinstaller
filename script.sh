#!/bin/bash

echo "Select a Desktop Enviroment:"
echo "(1) Kde Plasma" 
echo "(2) Gnome" 
echo "(3) XFCE"
echo "(4) Mate"
echo "(5) Cinnamon"
read -p "Enter a desktop enviroment (1-5) : " de

if command -v apt &> /dev/null; then
    PACKAGE_MANAGER="apt"
elif command -v dnf &> /dev/null; then
    PACKAGE_MANAGER="dnf"
elif command -v yum &> /dev/null; then
    PACKAGE_MANAGER="yum"
elif command -v pacman &> /dev/null; then
    PACKAGE_MANAGER="pacman"
elif command -v zypper &> /dev/null; then
    PACKAGE_MANAGER="zypper"
else
    PACKAGE_MANAGER="unknown"
fi
