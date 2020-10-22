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
sudo apt install gnome-tweaks
```

/usr/share/backgrounds/pop/
