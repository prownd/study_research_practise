#!/bin/bash

grub2-set-default  'Fedora (4.9.6-200.fc25.x86_64) 25 (Workstation Edition)'
sudo grub2-mkconfig  -o /boot/grub2/grub.cfg 
