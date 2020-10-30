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
