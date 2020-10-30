### Add repositories
```
sudo add-apt-repository universe
sudo add-apt-repository multiverse
sudo apt update
```

### Add flatpak support
- **install:**
```
sudo apt install flatpak -y
```

- **add repo:**
```
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
```

### Add snap support
```
sudo apt install snapd
```

### Add snap store - optional
```
sudo snap install snap-store
```
### Install Software and Updates app (like Ubuntu has)
- launch/search: software and updates
```
sudo apt install software-properties-gtk -y
```

### Install microsoft fonts
```
sudo add-apt-repository multiverse
sudo apt install ttf-mscorefonts-installer
```

### Install synaptic package manager
```
sudo apt-get install synaptic -y
```

### Install firewall
```
sudo apt-get install gufw -y
```

### codecs
```
sudo apt install ffmpeg -y
sudo apt-get install ubuntu-restricted-extras -y
```
### Browsers

**Brave**
- instructions here: https://brave.com/linux/
- download here: https://brave.com/download/

```
sudo apt install apt-transport-https curl -y

curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -

echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list

sudo apt update

sudo apt install brave-browser -y
```

**Chromium**
```
sudo apt install chromium-browser -y
```

**Firefox**
 ```
 sudo apt install firefox -y
 ```

### Torrents - qbittorrent
```
sudo apt install qbittorrent -y
```


### debian package installer - gui
- Eddy - link: `https://github.com/donadigo/eddy`

### Codecs:
```
sudo apt-get install ubuntu-restricted-extras
```

### Video players:
- **vlc:**
```
sudo apt install vlc -y
```

- **celuloid (good and has playback speed):**
```
flatpak install flathub io.github.celluloid_player.Celluloid -y
```

- **gnome videos aka totem (good and has playback speed):** 
```
sudo apt-get install totem libtotem0 -y
```

- **parole (good but no playback speed):**
```
sudo apt install parole -y
```
- mpv (meh, no customization)
```
sudo apt install mpv
```

### Archive
- **gzip, zip, unzip, default in ubuntu based distros:**
```
sudo apt-get install gzip zip unzip -y
```
### Image viewer
- **eye of gnome (gnome image viewer), default in ubuntu based distros:**
```
sudo apt-get install eog
```

### ScreenShot
- add repo:
```
sudo add-apt-repository -y ppa:linuxuprising/shutter
```
- install:
```
sudo apt install shutter -y
```
- remove:
```
sudo apt remove shutter
sudo add-apt-repository --remove ppa:linuxuprising/shutter
```

- **flameshot**
```
apt install flameshot
```

### PDF
- **foxit reader:**
  - download
  ```
  wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.4/en_us/FoxitReader2.4.1.0609_Server_x64_enu_Setup.run.tar.gz
  ```
  or download it from: https://www.foxitsoftware.com/pdf-reader/
  
  - extract the file
  ```
  tar -xvf FoxitReader*.tar.gz (the downloaded file name)
  ```
  
  - install:
    - double click the extracted file or 
  ```
  ./filename.run
  ```
  - the program will be installed under: `/home/yourUsername/opt/foxitsoftware/foxitreader`
  - uninstall:
  ```
  cd /home/yourUsername/opt/foxitsoftware/foxitreader
  sudo ./maintenancetool.sh
  ```

### Beyond Compare

- enable 32-bit architecture support
```
sudo dpkg --add-architecture i386
```
- download it from https://www.scootersoftware.com/download.php or with `wget`
```
wget https://www.scootersoftware.com/bcompare-4.3.7.25118_amd64.deb
```
- install:
```
sudo apt-get install gdebi-core
sudo gdebi bcompare-4.3.7.25118_amd64.deb
```
  - or with a GUI app like Eddy by double clicking it
- uninstall:
```
sudo apt-get remove bcompare
```
- install instructions: https://www.scootersoftware.com/download.php?zz=kb_linux_install

### OBS
- install notes: https://obsproject.com/wiki/install-instructions#linux
```
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio -y
```

## Development

### Sublime Text
- Install the GPG key:
```
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
```
- Ensure apt is set up to work with https sources:
```
sudo apt-get install apt-transport-https
```

Select the channel to use:

```
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
```

- Update apt sources
```
sudo apt-get update
```
- install Sublime Text
```
sudo apt-get install sublime-text
```
- instructions here: https://www.sublimetext.com/docs/3/linux_repositories.html#apt

### VSCode
- using snap:
```
sudo snap install --classic code
sudo snap remove code
```
- using .deb
- download it from https://code.visualstudio.com/docs/?dv=linux64_deb
- install:
```
sudo apt install fileName.deb
```

### WebStorm
- install
```
sudo snap install webstorm --classic
```
- uninstall
```
sudo snap remove webstorm
```
### Notepadqq
```
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install notepadqq
```
- uninstall:
```
sudo apt-get remove --autoremove notepadqq-gtk
```
- snap:
```
snap install --classic notepadqq
```
- download & documentation: https://notepadqq.com/wp/download/

### Git
```
apt-get install git
```

### latest `git` version
- add git PPA (Personal Package Archive) && install git 
``` bash
  sudo add-apt-repository ppa:git-core/ppa -y
  sudo apt-get update
  sudo apt-get install git
```
- if error while running `sudo add-apt-repository` run:
``` bash
  sudo apt-get install software-properties-common python-software-properties
```

### NVM
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.36.0/install.sh | bash
```
- check instalation, should print: `nvm`
```
command -v nvm
```
- homepage: https://github.com/nvm-sh/nvm#installing-and-updating
- install Node LTS:
```
nvm install --lts
```
- use LTS
```
nvm use --lts
```
- list installed node versions
```
nvm ls
```
- install version
``` 
nvm install 12.3.4
```
- use version
```
nvm use 12.3.4
```
- list curent node version
```
nvm current
```

## Install and set up zsh as default
- instructions from here: https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH

```
sudo apt install zsh -y
```
### Verify installation:
```
zsh --version
```
Expected result: zsh 5.4.2 or more recent.

### Make it your default shell 
```
chsh -s $(which zsh)
```
Log out and login back again to use your new default shell.

### default option
after restart a menu will apear asking you to chose some configs, choose menu **2**

### Test that it worked with 
```
echo $SHELL
```
Expected result: `/bin/zsh` or similar.
### Test with:
```
$SHELL --version
```
Expected result: 'zsh 5.4.2' or similar

### uninstall zsh
``` bash
  sudo apt-get --purge remove zsh -y
```

### change default shell to zsh
``` bash
  chsh -s /usr/bin/zsh
```

### install oh-my-zsh:
  - instructions here: https://github.com/ohmyzsh/ohmyzsh#basic-installation
  - requires: `curl/wget && git && zsh`
  - [repo here](https://github.com/ohmyzsh/ohmyzsh)
  - reaload zsh:
  ```
   source ~/.zshrc
   ```
  - use theme `intheloop`
  - copy it from here to `~ .oh-my-zsh/custom/themes`
``` bash
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

```

### uninstall oh-my-zsh
``` bash
  uninstall_oh_my_zsh
```
### zsh config
```
ENABLE_CORRECTION="true"
```
- plugins:
  - autosuggest: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md#oh-my-zsh
  - nice YT video guide: https://www.youtube.com/watch?v=4KBuPCeF9Gc
  
  
### install wget curl build-essential fonts-powerline
``` bash
sudo apt-get install wget curl build-essential libssl-dev fonts-powerline -y
```

### XKill shortcut - terminate process
```
open setting > keyboard > keyboard shortcuts > customize shurtcuts > add new:
name: whatever name you want
comand: xkill
shortcut: whatever key combination you want
```
### install samba shares
sudo apt install samba -y
