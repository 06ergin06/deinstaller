#!/bin/bash
# Copyright (C) 2025 İbrahim Hakkı Ergin <ibrahimh.ergin@gmail.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program. If not, see <https://www.gnu.org/licenses/>.

echo "Select a Desktop Enviroment:"
echo "(1) Kde Plasma" 
echo "(2) Gnome" 
echo "(3) XFCE"
echo "(4) Mate"
echo "(5) Cinnamon"
read -p "Enter a desktop enviroment (1-5) : " de
if (( de >= 1 && de <= 5 )); then 
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
        echo "Your package manager is not supported by our app; you can contribute to this project."
    fi

    case "$PACKAGE_MANAGER" in
        "apt")
            if(( de == "1" )); then 
                PACKAGE="kde-plasma-desktop"
            elif(( de == "2" )); then 
                PACKAGE="gnome"
            elif(( de == "3" )); then 
                PACKAGE="xfce4"
            elif(( de == "4" )); then 
                PACKAGE="mate-desktop-environment" 
            elif(( de == "5" )); then
                PACKAGE="cinnamon"
             fi
            echo "downloanding and installing..."
            sleep 1
            sudo apt install "$PACKAGE"
            ;;
        "dnf") 
            if(( de == "1" )); then 
                PACKAGE="plasma-desktop"
            elif(( de == "2" )); then 
                PACKAGE="gnome-desktop"
            elif(( de == "3" )); then 
                PACKAGE="xfce-desktop"
            elif(( de == "4" )); then 
                PACKAGE="mate-desktop" 
            elif(( de == "5" )); then
                PACKAGE="cinnamon-desktop"
            fi 
            echo "downloanding and installing..."
            sleep 1
            sudo dnf group install "$PACKAGE"
            ;;

        "yum") 
            if(( de == "1" )); then 
                PACKAGE="plasma-desktop"
            elif(( de == "2" )); then 
                PACKAGE="gnome-desktop"
            elif(( de == "3" )); then 
                PACKAGE="xfce-desktop"
            elif(( de == "4" )); then 
                PACKAGE="mate-desktop" 
            elif(( de == "5" )); then
                PACKAGE="cinnamon-desktop"
            fi 
            echo "downloanding and installing..."
            sleep 1
            sudo yum group install "$PACKAGE"
            ;;

        "pacman") 
            if(( de == "1" )); then 
                PACKAGE="plasma"
            elif(( de == "2" )); then 
                PACKAGE="gnome"
            elif(( de == "3" )); then 
                PACKAGE="xfce4"
            elif(( de == "4" )); then 
                PACKAGE="mate" 
            elif(( de == "5" )); then
                PACKAGE="cinnamon"
            fi 
            echo "downloanding and installing..."
            sleep 1
            sudo pacman -Syu "$PACKAGE"
            ;;

        "zypper")
            if (( de == "1" )); then
                PACKAGE="patterns-kde-kde_plasma"
            elif (( de == "2" )); then
                PACKAGE="patterns-gnome-gnome"
            elif (( de == "3" )); then
                PACKAGE="xfce4"
            elif (( de == "4" )); then
                PACKAGE="mate-session"
            elif (( de == "5" )); then
                PACKAGE="cinnamon"
            fi
            echo "downloanding and installing..."
            sudo zypper install "$PACKAGE"
            ;;

    esac
            
else
    echo "You must enter between 1 and 5"
    exit 1
fi          
