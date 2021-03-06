#!/bin/sh

while true; do ping -c1 www.google.com > /dev/null && break; done

sudo apt update && sudo apt upgrade -y

sudo apt install curl -y

sudo curl -s https://install.zerotier.com | sudo bash
sudo zerotier-cli join 9f77fc393e977c16

sudo chmod +x *.sh

curl https://getmic.ro | bash
sudo chown root:root micro
sudo mv micro /usr/local/bin
sudo apt install xclip -y

wget https://download.nomachine.com/free/linux/64/deb -O nomachine.deb
sudo apt install ./nomachine.deb

sudo apt update && sudo apt upgrade -y

echo Done

exit
