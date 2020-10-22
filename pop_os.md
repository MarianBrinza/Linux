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

link to fix: https://www.reddit.com/r/pop_os/comments/ch8v7g/pop_os_official_nvidia_43034_problems_thread/
