### Parted - allows you to easily manage hard disk partitions
#### Used to add, delete, shrink and extend disk partitions along with the file systems located on them

- check version: `parted -v`
- install: `sudo apt-get install parted`
- quit parted: `quit`
- list all dries: `sudo parted -ls`

### Fstab - shows mounting points
- open the file: `sudo nano /etc/fstab`

### blkid - lists block id
- list block id of the file sd1: `blkid /dev/sda1`
- list block id of current file (the drive you are on): `blkid`
