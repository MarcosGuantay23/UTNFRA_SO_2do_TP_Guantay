#!/bin/bash

sudo fdisk -l

sudo fdisk /dev/sdc <<EOF
n
p
1

+1.5GB
n
p
2


t
1
8e
t
2
8e
w
EOF

sudo fdisk /dev/sdd <<EOF
n
p
1

+5M
t
8e
w
EOF

sudo pvcreate /dev/sdc1 /dev/sdc2 /dev/sdd1

sudo vgcreate vg_datos /dev/sdd1 /dev/sdc1
sudo vgcreate vg_temp /dev/sdc2

sudo vgs

sudo lvcreate -L 5MB vg_datos -n lv_docker
sudo lvcreate -l +100%FREE vg_datos -n lv_workareas

sudo vgs

sudo lvcreate -l +100%FREE vg_temp -n lv_swap

sudo lvs

sudo fdisk -l

sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap

sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/

df -h

cd /
sudo mkdir -p work
sudo mount /dev/mapper/vg_datos-lv_workareas work/

sudo systemctl restart docker
sudo systemctl status docker

sudo swapon /dev/mapper/vg_temp-lv_swap

df -h
