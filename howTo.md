### Install .deb Packages on an Ubuntu Linux?
- newer distributions
```
sudo apt install ./fileName.deb
```
- older distributions
```
sudo dpkg -i fileName.deb
sudo apt-get install -f # Install dependencies
```

Link to article: https://www.cyberciti.biz/faq/ubuntu-linux-how-do-i-install-deb-packages/

### Install appimages
- run appimage:
`right click the file > Permissions > Run as a program`

### Install appimage launcher

1. download appimage launcher from: `https://github.com/TheAssassin/AppImageLauncher/releases/tag/v2.2.0`
2. download .deb for debian distros and `amd64` for 64 bit pc
3. install the `.deb` appimage launcher package
4. goto Home
5. create folder Applications
6. move any appimage files to Applications folder
7. right click appimage program
8. open with 
9. search and select `appimage launcher`
10. select `integrate and run`

### check default shell
``` bash
  echo $SHELL      -> default shell
  echo $0          -> shell currenty in use
  cat /etc/shells  -> lists all shells on the system
```

### print current user
``` bash
$ who
$ whoami
```
----
### Change volume with kb shortcut

link to article: http://blog.chapagain.com.np/ubuntu-linux-increase-decrease-volume-from-command-line-keyboard-shortcut/

Here are some linux commands (pactl and amixer) to increase and decrease volume. You can also use these commands to set keyboard shortcut to increase and decrease volume.

pactl

pactl command is used to control a running PulseAudio sound server.

Increase volume by 10%

    pactl -- set-sink-volume 0 +10%

Decrease volume by 10%

    pactl -- set-sink-volume 0 -10%

Set volume to 80%

    pactl -- set-sink-volume 0 80%

Set volume to 200%

    pactl -- set-sink-volume 0 200%

amixer

amixer is a command-line mixer for ALSA soundcard driver.

Increase volume by 10%

    amixer set 'Master' 10%+

Decrease volume by 10%

    amixer set 'Master' 10%-

Set volume to 10%

    amixer set 'Master' 10%

Set volume to 80%

    amixer set 'Master' 80%

Shows a complete list of simple mixer controls

    amixer scontrols

Keyboard shortcut to increase/decrease volume

I am using Xubuntu. For Ubuntu users, you can search for keyboard in dash.
I have set “Super & +” key to increase volume and “Super & -” key to decrease volume. The following steps will create shortcut keys to increase and decrease volume by 2%.

    – Go to Settings Manager
    – Go to Hardware -> Keyboard
    – Go to ‘Application Shortcuts’ tab
    – Click ‘Add’ button
    – Write the command: amixer set Master 2%-
    – Type Super and – (minus) key
    – Again click ‘Add’ button
    – Write the command: amixer set Master 2%+
    – Type Super and + (plus) key
----

### Games

- YT video: https://www.youtube.com/watch?v=xvrft9ULvho
- article from ty video: https://christitus.com/ultimate-linux-gaming-guide/

Varmilo VA87M RGBY White LED TKL Dye Sub PBT Mechanical Keyboard - cherry mx silent red switch

### Terminal themes
https://github.com/Mayccoll/Gogh
- install dependencies:
```
sudo apt-get install dconf-cli uuid-runtime
```
- install:
```
 bash -c  "$(wget -qO- https://git.io/vQgMr)"
 ```
 - select themes:
 ```
 type ALL + enter
 ```
 
 - if error `/apps/gnome-terminal/profiles/default profile' not a valid identifier` while installing run:
 
 ```
 //Reset your profiles:
$ dconf reset -f /org/gnome/terminal/legacy/profiles:/
Close your terminal. Re-open the terminal.

Go to Edit ---> Preferences ---> Profiles.
Create NEW profile called "Default".
Close the terminal. Re-open the terminal.
Confirm "Default" is still listed in your profiles.
If it is, run the Gogh script again.
```

 


### Text to ASCII
http://patorjk.com/software/taag/#p=display&f=Epic&t=Done



## PATH
- the path contains a list of all folders that contains exacutable files
- print `path`
```
echo $PATH
```
- add folder to `path`
```
export PATH="$HOME/personalScripts:$PATH"
```
- where `personalScripts` is my custom folder containing my executables

### Disable sleep
- check status
```
systemctl status sleep.target
```
- diable
```
sudo systemctl mask sleep.target suspend.target hibernate.target hybrid-sleep.target
```
- enable:
```
sudo systemctl unmask sleep.target suspend.target hibernate.target hybrid-sleep.target
```
links:
1. https://www.unixtutorial.org/disable-sleep-on-ubuntu-server/
2. https://unix.stackexchange.com/questions/25133/ubuntu-server-continuously-goes-to-sleep

### SSH connect
- we have 2 machines, 1 personal pc (myPc) and 1 the server (theServer)
- steps:
1. on `myPc` run: `ssh-keygen -t rsa -b 4096`
2. accept defaults
3. on `myPc` run: `ssh-copy-id theServer@serverIpAddress` >> s`sh-copy-id BobUserName@192.168.0.999`
4. link to video: https://www.youtube.com/watch?v=vpk_1gldOAE

### change folder owner:
```
sudo chown marian:marian /mnt/D
```

# easystroke
```
sudo apt-get install -y easystroke
```
Stackoverflow link to post: `https://askubuntu.com/questions/117299/adjust-the-volume-using-the-mouse-wheel`
![image](https://user-images.githubusercontent.com/31028022/134045629-3fbfd3de-bcb8-4085-8685-da0583875a0c.png)

# Disable sleep for pc
- first use this command to discover current settings:
```
$ gsettings get org.gnome.desktop.lockdown disable-lock-screen
false
```

- now set it to true using this command:
```
gsettings set org.gnome.desktop.lockdown disable-lock-screen 'true'
```

- if you are unhappy with the new setting you can reverse it using:
```
gsettings set org.gnome.desktop.lockdown disable-lock-screen 'false'
```

- link to SO question: https://askubuntu.com/questions/1048774/disabling-lock-screen-18-04
![image](https://user-images.githubusercontent.com/31028022/134060051-ecc8ce14-c5c1-4383-ba6d-0ac3ceb62053.png)

# Nautilus - remove places from sidebar3

- comment out the bookmark you don't want from: `~/.config/user-dirs.dirs`
- open `/etc/xdg/user-dirs.defaults` and comment out the same bookmarks
- you have to change both files

```
$ gsettings set org.gnome.desktop.privacy remember-recent-files false
```
- or
- install dconf-editor:
```
sudo apt install dconf-editor
```
- Simply open dconf-editor
- navigate to org->gnome->desktop->privacy 
- uncheck the remember-recent-files key


### automount drive/hdd 
- find out the `uuid` of the drive
```
sudo blkid
sudo fdisk -l
```
- or: open `Disks` app, select your dirive and look for the `uuid`
- ![image](https://user-images.githubusercontent.com/31028022/138554758-0bb512a2-ddb7-4772-aecc-f5af368675f0.png)
- make a folder where the new drive will be mounted to:
```
sudo mkdir /mnt/d-drive
```
- edit `fstab` file
```
sudo nano etc/fstab
example:
# d-drive - kingstone 250gb ssd
UUID=6aa17eab-e4de-488d-b37c-b0c6e4815b93  /mnt/d-drive  ext4 defaults 0 2

```
![image](https://user-images.githubusercontent.com/31028022/138554833-a23b736f-809b-49b2-855a-93c027e958fe.png)
- check if it works with:
```
sudo mount -a
```

### Disable Sleep
![image](https://user-images.githubusercontent.com/31028022/138591049-65c4d922-86d5-4fe6-bd0c-b82389551148.png)
![image](https://user-images.githubusercontent.com/31028022/138591074-01475fdd-dc2d-4860-9b9c-64d996b2d685.png)


### Run scrips with double click
1. make the script executable

![image](https://user-images.githubusercontent.com/31028022/139589318-61c8ae19-11e3-4a1e-bc15-12d33ae8aa87.png)

2. change nautilus settings

![image](https://user-images.githubusercontent.com/31028022/139589362-9e6c2ea1-c263-44a6-87ec-91f7b3027bf2.png)

### Install ZSH 
```
sudo apt install zsh -y
sudo chsh -s /bin/zsh yourUsernameHere
```


### Install oh-my-zsh
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
