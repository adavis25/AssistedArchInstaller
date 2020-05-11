#!/bin/bash

ping archlinux.org -c 5

timedatectl set-ntp true

fdisk /dev/sda

lsblk 
read

#File Systems
mkswap /dev/sda2
swapon /dev/sda2 
mkfs.ext4 /dev/sda1
mkfs.ext4 /dev/sda3
mkfs.ext4 /dev/sda4
mount /dev/sda3 /mnt
mkdir /mnt/home
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
mount /dev/sda4 /mnt/home
read

#Only US Mirrors
pacman -Syy
pacman -S reflector
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
reflector -c "US" -f 12 -l 10 -n 12 --save /etc/pacman.d/mirrorlist

#Base install
pacstrap /mnt base base-devel linux linux-firmware git networkmanager vim netctl

genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt