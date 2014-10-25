#!/bin/bash

cgdisk /dev/sda
cgdisk /dev/sda

cgdisk /dev/sdb
cgdisk /deb/sdb

mkfs.fat -F32 /dev/sda1
mkfs.ext4 /dev/sda2

mkswap /dev/sdb1
swapon /dev/sdb1

mkfs.ext4 /dev/sdb2
mkfs.ext4 /dev/sdb3
mkfs.ext4 /dev/sdb4

mount /dev/sda2 /mnt
mkdir /mnt/home
mkdir /mnt/var
mkdir /mnt/tmp
mkdir /mnt/boot
mount /dev/sda1 /mnt/boot
mount /dev/sdb2 /mnt/var
mount /dev/sdb3 /mnt/tmp
mount /dev/sdb4 /mnt/home
