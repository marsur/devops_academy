#!/bin/bash

timedatectl set-timezone "Europe/Prague" 

apt install mc wget curl zip vim unzip git net-tools -y 


#  change restart services to auto (not interactive)

echo '$nrconf{restart} = "a";' | sudo tee /etc/needrestart/needrestart.conf

apt update -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" && apt upgrade -y && apt autoremove

sleep 20

reboot
