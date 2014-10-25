#!/bin/bash

nano /etc/locale.gen
locale-gen
echo LANG=en_US.UTF-8 > /etc/locale.conf
export LAND=en_US.UTF-8
ln -s /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
hwclock --systohc --utc
echo ASRock-P67-Pro3
nano /etc/hosts
cd /etc/netctl
cp examples/ethernet-static my_network
nano my_network
netctl enable my_network
passwd
pacman -S gummiboot
gummiboot --path=/boot install
touch /boot/loader/entries/arch.conf
echo "title          Arch Linux" >> /boot/loader/entries/arch.conf
echo "linux          /vmlinuz-linux" >> /boot/loader/entries/arch.conf
echo "initrd         /initramfs-linux.img" >> /boot/loader/entries/arch.conf
echo "options        root=/dev/sda2 rw" >> /boot/loader/entries/arch.conf
rm /boot/loader/loader.conf
touch /boot/loader/loader.conf
echo "default  arch" >> /boot/loader/loader.conf
echo "timeout  5" >> /boot/loader/loader.conf
exit
