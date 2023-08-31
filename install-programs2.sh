#!/bin/bash

# INSTALL SCRIPT FOR POP OS
# Installing basic programs

# Add repositories
echo " "
echo "................................"
echo "   >> Add repositories: universe, multiverse"
echo "................................"
sudo add-apt-repository universe -y
sudo add-apt-repository multiverse -y
sudo apt update
echo "................................"
echo "   >> DONE "
echo "................................"

# Install wget curl build-essential fonts-powerline
echo " "
echo "................................"
echo "   >> Install wget curl build-essential fonts-powerline"
echo "................................"
sudo apt-get install wget curl build-essential libssl-dev fonts-powerline -y
echo "................................"
echo "   >> DONE "
echo "................................"


# Install 7 zip and support for rar files
echo " "
echo "................................"
echo "   >>Install 7 zip and support for rar files"
echo "................................"
sudo apt install p7zip-full p7zip-rar -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install synaptic package manager
echo " "
echo "................................"
echo "   >> Install synaptic package manager"
echo "................................"
sudo apt-get install synaptic -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install gnome tweaks
echo " "
echo "................................"
echo "   >> Install gnome tweaks"
echo "................................"
sudo apt install gnome-tweaks -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install pip
echo " "
echo "................................"
echo "   >> Install python3-pip"
echo "................................"
sudo apt install python3-pip -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install gnome shell extensions
echo " "
echo "................................"
echo "   >> Install gnome shell extensions"
echo "................................"
sudo apt install gnome-shell-extensions -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install virtual box
echo " "
echo "................................"
echo "   >> Install virtual box
echo "................................"
sudo apt install virtualbox -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install dolphin file manager
#echo " "
#echo "................................"
#echo "   >> Install dolphin file manager"
#echo "................................"
#sudo apt-get install -y dolphin
#echo "................................"
#echo "   >> DONE "
#echo "................................"

# Install Software and Updates app (like Ubuntu has)
echo " "
echo "................................"
echo "   >> Install Software and Updates app (like Ubuntu has)"
echo "................................"
sudo apt install software-properties-gtk -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install synaptic package manager
echo " "
echo "................................"
echo "   >> Install synaptic package manager"
echo "................................"
sudo apt-get install synaptic -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install firewall
echo " "
echo "................................"
echo "   >> Install firewall"
echo "................................"
sudo apt-get install gufw -y
echo "................................"
echo "   >> DONE "
echo "................................"

#--------------------------------------
# BROWSERS

# Install Chrmoium
echo " "
echo "................................"
echo "   >> Install Chrmoium"
echo "................................"
sudo apt install chromium-browser -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install Firefox
echo " "
echo "................................"
echo "   >> Install Firefox"
echo "................................"
sudo apt install firefox -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install brave
echo " "
echo "................................"
echo "   >> Install brave"
echo "................................"
sudo sudo snap install brave
echo "................................"
echo "   >> DONE "
echo "................................"

# Install epiphany
echo " "
echo "................................"
echo "   >> Install epiphany"
echo "................................"
sudo sudo snap install epiphany
echo "................................"
echo "   >> DONE "
echo "................................"

# Install qbittorrent
echo " "
echo "................................"
echo "   >> Install qbittorrent"
echo "................................"
sudo apt install qbittorrent -y
echo "................................"
echo "   >> DONE "
echo "................................"

#--------------------------------------
# VIDEO PLAYERS

# Install vlc
echo " "
echo "................................"
echo "   >> Install vlc"
echo "................................"
sudo apt install vlc -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install Celluloid
echo " "
echo "................................"
echo "   >> Install Celluloid"
echo "................................"
sudo flatpak install flathub io.github.celluloid_player.Celluloid -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install totem
echo " "
echo "................................"
echo "   >> Install totem"
echo "................................"
sudo apt-get install totem libtotem0 -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install parole
echo " "
echo "................................"
echo "   >> Install parole"
echo "................................"
sudo apt install parole -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install gzip, zip, unzip
echo " "
echo "................................"
echo "   >> Install gzip, zip, unzip"
echo "................................"
sudo apt-get install gzip zip unzip -y
echo "................................"
echo "   >> DONE "
echo "................................"

# Install image viewer - eog
echo " "
echo "................................"
echo "   >> Install image viewer - eog"
echo "................................"
sudo apt-get install eog
echo "................................"
echo "   >> DONE "
echo "................................"

# Install shutter - screen shot tool
echo " "
echo "................................"
echo "   >> Install shutter - screenshot tool"
echo "................................"
sudo add-apt-repository -y ppa:linuxuprising/shutter
sudo apt install shutter -y
sudo add-apt-repository -r ppa:linuxuprising/shutter
echo "................................"
echo "   >> DONE "
echo "................................"

# Install flameshot
echo " "
echo "................................"
echo "   >> Install flameshot - screenshot tool"
echo "................................"
sudo apt install flameshot
echo "................................"
echo "   >> DONE "
echo "................................"

# Install OBS
echo " "
echo "................................"
echo "   >> Install OBS"
echo "................................"
sudo snap install obs-studio
echo "................................"
echo "   >> DONE "
echo "................................"

#--------------------------------------
# DEVELOPMENT

# Install Sublime Text
echo " "
echo "................................"
echo "   >> Install Sublime Text"
echo "................................"
# Install the GPG key:
#wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
#Ensure apt is set up to work with https sources:
#sudo apt-get install apt-transport-https
# Select the channel to use:
#echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
# Update apt sources
#sudo apt-get update
# Finally install Sublime Text
#sudo apt-get install sublime-text
sudo snap install sublime-text --classic
echo "................................"
echo "   >> DONE "
echo "................................"

# Install VSCode
echo " "
echo "................................"
echo "   >> Install VSCode"
echo "................................"
sudo snap install --classic code
echo "................................"
echo "   >> DONE "
echo "................................"

# Install WebStorm
echo " "
echo "................................"
echo "   >> Install WebStorm"
echo "................................"
sudo snap install webstorm --classic
echo "................................"
echo "   >> DONE "
echo "................................"

# Install notepadqq
echo " "
echo "................................"
echo "   >> Install notepadqq"
echo "................................"
sudo snap install --classic notepadqq
echo "................................"
echo "   >> DONE "
echo "................................"


# Install figma
echo " "
echo "................................"
echo "   >> Install figma"
echo "................................"
sudo sudo snap install figma-linux
echo "................................"
echo "   >> DONE "
echo "................................"



# Install terminator
echo " "
echo "................................"
echo "   >> Install terminator"
echo "................................"
sudo apt install terminator -y
echo "................................"
echo "   >> DONE "
echo "................................"


# Install dconf-editor
echo " "
echo "................................"
echo "   >> Install dconf-editor"
echo "................................"
sudo apt install dconf-editor
echo "................................"
echo "   >> DONE "
echo "................................"

# Install zsh
echo " "
echo "................................"
echo "   >> Install zsh"
echo "................................"
sudo apt install zsh
echo "................................"
echo "   >> DONE "
echo "................................"


# Install oh-my-zsh
echo " "
echo "................................"
echo "   >> Install oh-my-zsh"
echo "................................"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "................................"
echo "   >> DONE "
echo "................................"



# Install NVM
echo " "
echo "................................"
echo "   >> Install NVM"
echo "................................"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash

# Install Node --lts
nvm install --lts

# Use --lts
nvm use --lts

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
















