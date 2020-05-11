ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
read 
hwclock --systohc

echo "en_US UTF.8 UTF-8" >> /etc/locale.gen
locale-gen

echo LANG=en-US.UTF-8 >> /etc/locale.conf
echo archpad >> /etc/hostname

#Grub Time
pacman -S grub
grub-install --target=i386-pc /dev/sda 
grub-mkconfig -o /boot.grub.cfg
read

#Password
echo "Enter root Password"
passwd
