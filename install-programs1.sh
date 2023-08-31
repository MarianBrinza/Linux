#!/bin/bash

# INSTALL SCRIPT FOR POP OS
# Installing basic programs


# Add flatpack support
echo " "
echo "................................"
echo "   >> Add flatpack support"
echo "................................"
sudo apt install flatpak -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Add flatpack repo
echo " "
echo "................................"
echo "   >> Add flatpack repo"
echo "................................"
sudo flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
echo "................................"
echo "   >> DONE "
echo "................................"

# Add snap support and snap store
echo " "
echo "................................"
echo "   >> Add snap support and snap store"
echo "................................"
sudo apt install snapd -y
sudo snap install snap-store
echo "................................"
echo "   >> DONE "
echo "................................"
echo " "
echo " "
echo "................................"
echo "   
 ______   _______  _        _______ 
(  __  \ (  ___  )( (    /|(  ____ \
| (  \  )| (   ) ||  \  ( || (    \/
| |   ) || |   | ||   \ | || (__    
| |   | || |   | || (\ \) ||  __)   
| |   ) || |   | || | \   || (      
| (__/  )| (___) || )  \  || (____/\
(______/ (_______)|/    )_)(_______/
                          
"
echo "................................"
echo "restarting pc ..."
sudo reboot
