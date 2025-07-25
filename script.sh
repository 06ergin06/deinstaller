#!/bin/bash

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
            sudo apt install -y "$PACKAGE"
            ;;
        "dnf") 
            if(( de == "1" )); then 
                PACKAGE="@plasma-desktop"
            elif(( de == "2" )); then 
                PACKAGE="@gnome-desktop"
            elif(( de == "3" )); then 
                PACKAGE="@xfce4-desktop"
            elif(( de == "4" )); then 
                PACKAGE="@mate-desktop" 
            elif(( de == "5" )); then
                PACKAGE="@cinnamon-desktop"
            fi 
            echo "downloanding and installing..."
            sleep 1
            sudo dnf group install -y "$PACKAGE"
            ;;

        "yum") 
            if(( de == "1" )); then 
                PACKAGE="plasma-desktop"
            elif(( de == "2" )); then 
                PACKAGE="gnome-desktop"
            elif(( de == "3" )); then 
                PACKAGE="xfce4-desktop"
            elif(( de == "4" )); then 
                PACKAGE="mate-desktop" 
            elif(( de == "5" )); then
                PACKAGE="cinnamon-desktop"
            fi 
            echo "downloanding and installing..."
            sleep 1
            sudo yum group install -y "$PACKAGE"
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
            sudo pacman -Syu --noconfirm "$PACKAGE"
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
            sudo zypper install -y "$PACKAGE"
            ;;

    esac
            
else
    echo "You must enter between 1 and 5"
    exit 1
fi          