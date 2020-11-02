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
