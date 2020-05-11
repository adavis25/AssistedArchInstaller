# Assisted Arch Install Script

## Installation:

Booting from an arch iso
Connect to the internet then install git

```
pacman -Sy git
```

When git is installed clone and enter the repository. 
```
git clone https://github.com/adavis25/AssistedArchInstaller.git
cd AssistedArchInstaller
```

## Usage:

When inside the repository run the script. 
```
sh installer
```

First the installer will check and see if you are connected to the internet.

Next it will run fdisk, a simple tool man page here http://man7.org/linux/man-pages/man8/fdisk.8.html 

