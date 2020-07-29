#! /bin/bash

sudo yum update -y

mkdir scriptDownloads
cd scriptDownloads

wget https://download.jetbrains.com/python/pycharm-professional-2020.1.3.tar.gz
wget https://download.jetbrains.com/datagrip/datagrip-2020.1.5.tar.gz
wget https://download.jetbrains.com/webide/PhpStorm-2020.1.3.tar.gz
wget https://download.jetbrains.com/webstorm/WebStorm-2020.1.3.tar.gz
wget https://download.jetbrains.com/go/goland-2020.1.4.tar.gz
wget https://release.gitkraken.com/linux/gitkraken-amd64.rpm
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm


sudo tar xzf pycharm-*.tar.gz -C /opt/
sudo tar xzf datagrip-*.tar.gz -C /opt/
sudo tar xzf PhpStorm-*.tar.gz -C /opt/
sudo tar xzf WebStorm-*.tar.gz -C /opt/
sudo tar xzf goland-*.tar.gz -C /opt/
sudo tar xzf discord-*.tar.gz -C /opt/
sudo dnf install go -y
sudo rpm -i gitkraken*.rpm -y
sudo yum install liberation-fonts -y
sudo dnf install google-chrome -y
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code -y
sudo dnf install snapd -y
snap install discord
sudo yum update -y
sudo reboot
