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
