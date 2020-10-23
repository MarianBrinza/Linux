### Fix black screen at login

``` bash
sudo nano /lib/modprobe.d/nvidia-graphics-drivers.conf
```

change: 

```  bash
options nvidia-drm modeset=1
```

to:

```  bash
options nvidia-drm modeset=0 
```

link to fix:
  1. https://www.reddit.com/r/pop_os/comments/ch8v7g/pop_os_official_nvidia_43034_problems_thread/
  2. https://github.com/pop-os/nvidia-graphics-drivers/issues/10
  
### Update && upgrade
``` bash
sudo apt-get update && sudo apt-get upgrade -y
```

### Install gnome tweak tool
``` bash
sudo apt install gnome-tweaks -y
```

### Install codecs
```
sudo apt-get install ubuntu-restricted-extras
```

## Extensions

1. go to: https://extensions.gnome.org/
2. install `GNOME Shell extensions` - look top page for message to install
3. search and install: `dash to dock`
4. search and install: `dash to panel`
5. search and install: `arc menu by andrew.zaech`
    - dependencies: `sudo apt install gnome-shell-extensions gnome-menus gir1.2-gmenu-3.0 -y`
    - link to homepage, scroll down for info & dependencies: https://gitlab.com/arcmenu-team/Arc-Menu
    - link to dependencies: https://gitlab.com/arcmenu-team/Arc-Menu/-/wikis/Arc-Menu-Dependencies

/usr/share/backgrounds/pop/