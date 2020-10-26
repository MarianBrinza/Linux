### codecs
```
sudo apt install ffmpeg -y
sudo apt-get install ubuntu-restricted-extras -y
```
### Browesers

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
```
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio -y
```
