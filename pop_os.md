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

### install synaptic package manager
```
sudo apt-get install synaptic
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

### Installing

- **gnome tweak tool:**
``` bash
sudo apt install gnome-tweaks -y
```

- **codecs:**
```
sudo apt-get install ubuntu-restricted-extras
```

- **install Dolphin:**
```
sudo apt-get install -y dolphin
```


## Extensions

1. go to: https://extensions.gnome.org/
2. install `GNOME Shell extensions` - look top page for message to install
3. search and install: `dash to dock`
4. search and install: `dash to panel`  => use this one
5. search and install: `arc menu by andrew.zaech`
    - dependencies: `sudo apt install gnome-shell-extensions gnome-menus gir1.2-gmenu-3.0 -y`
    - link to homepage, scroll down for info & dependencies: https://gitlab.com/arcmenu-team/Arc-Menu
    - link to dependencies: https://gitlab.com/arcmenu-team/Arc-Menu/-/wikis/Arc-Menu-Dependencies

default backgrounds location: /usr/share/backgrounds/pop/

wallpapers: https://www.wallpaperflare.com/

### Isolate workspaces - show only apps from current workspace on taskbar
` isolate-workspaces true`
- ubuntu: `gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces true`
- dash to panel: `settings > Behavior > Isolate workspaces > ON`
- use extension `Workspace Isolated Dash by n-yuki`
- link to fix: https://askubuntu.com/questions/464946/force-alt-tab-to-switch-only-on-current-workspace-in-gnome-shell

### Alt + Tab show only apps from current workspace
```
> Settings > Keyboard> Keyboard Shortcuts > Customize Shortcuts >
> Search for **switch application** - disable it (remove shortcuts)
> Search for  **switch windows** add custom shortcut: alt+tab
> Done
```
credit to: The_Helios @reddit > link to fix: https://www.reddit.com/r/pop_os/comments/guppug/frustrations_alttab_behavior_isolating_workspaces/


### Open explorer with keyboard - Win + E
```
> Open System / Preferences / Keyboard shortcuts
> Scroll down to Desktop/Home folder, click on it, then press Win+E.
```

### Slow terminal on sudo commands
- check if `hostname` is in `hosts` file
```
print host name:  $ hostname 
host file is in:  $ /etc/hosts
open hosts file:  $ sudo nano /etc/hosts
make sure you have the correct host name there, if no just add it
```

### Uninstall default apps
```
sudo apt remove gnome-contacts gnome-weather geary -y
```

TSR #32 https://www.youtube.com/watch?v=3cjHQZwOYqQ
link to document: https://docs.google.com/document/d/1oZ8g-ceSo2BkwQ90xK-30Ej1wEQSKUprqiO7gXIKbDA/edit



