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

### Make bootable usb
```
sudo dd bs=4M if=path-to-iso-goes-here of=path-to-usb-drive status=progress
```
- check what drive the usb is by running:
- `sudo fdisk -l` or `lsblk`,
- always give the drive path, not the partition, so: `/dev/sdc` not `/dev/sdc1`
example:
```
sudo dd bs=4M if=linuxmint-20.2-xfce-64bit.iso of=/dev/sdc status=progress
```
link to  an gui alternative: https://www.youtube.com/watch?v=0xuP1GQLPpI
