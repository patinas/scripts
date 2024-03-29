#!/bin/sh

while true; do ping -c1 www.google.com > /dev/null && break; done

sudo apt update && sudo apt upgrade -y


sudo echo 'user ALL=(ALL:ALL) NOPASSWD: ALL' >> /etc/sudoers


sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config
sudo systemctl restart ssh
sudo passwd root


snap install ngrok
ngrok config add-authtoken 2J05ZW80NZQ0Mjg8oK1Wi1YBQwF_2cfNh6VrZCrsU1JEDvk7Y
screen -d -m ngrok start tcp 22
echo "screen -r"

echo Done

