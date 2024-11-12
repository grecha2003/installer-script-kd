#!/bin/bash
sudo apt update -y
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt upgrade -y

#SNAP STORE
#installing slack-client
echo "----------> INSTALLING SLACK0CLIENT OUT OF SNAP STORE 🟢"
sudo snap install slack --classic

#installing zoom-client
echo "----------> INSTALLING ZOOM-CLIENT OUT OF SNAP STORE 🟢🟢"
sudo snap install zoom-client

#APT
#installing gdebi
echo "----------> INSTALLING GDEBI OUT OF APT 🟢🟢🟢"
sudo apt install gdebi -y
sudo apt update -y
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt upgrade -y

#DEB
#installing wireguard
echo "----------> INSTALLING WIREGUARD VPN CLIENT OUT OF DEB 🟢🟢🟢🟢"
sudo apt install wireguard-tools resolvconf -y
sudo dpkg -i wireguird_amd64.deb
sudo apt update -y
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt upgrade -y

#installing anydesk
echo "----------> INSTALLING ANYDESK OUT OF DEB 🟢🟢🟢🟢🟢"
sudo dpkg -i anydesk_6.3.3-1_amd64.deb
sudo apt update -y
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt upgrade -y

#installing rustdesk
echo "----------> INSTALLING RUSTDESK OUT OF DEB 🟢🟢🟢🟢🟢🟢"
sudo dpkg -i rustdesk-1.3.2-x86_64.deb
sudo apt update -y
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt upgrade -y

#OFFICIAL REPOSITORIES
#installing chrome
echo "----------> INSTALLING GOOGLE_CHROME OUT OF DEB 🟢🟢🟢🟢🟢🟢🟢"
sudo apt-get update -y
sudo apt install wget -y
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get install google-chrome-stable -y
sudo apt-get update -y
sudo apt --fix-broken install -y

#installing pritunl
echo "----------> INSTALLING PRITUNL VPN CLIENT OUT OF OFFICIAL REPOSITORY 🟢🟢🟢🟢🟢🟢🟢🟢"
sudo tee /etc/apt/sources.list.d/pritunl.list << EOF
deb https://repo.pritunl.com/stable/apt noble main
EOF
sudo apt --assume-yes install gnupg
gpg --keyserver hkp://keyserver.ubuntu.com --recv-keys 7568D9BB55FF9E5287D586017AE645C0CF8E292A
gpg --armor --export 7568D9BB55FF9E5287D586017AE645C0CF8E292A | sudo tee /etc/apt/trusted.gpg.d/pritunl.asc
sudo apt update -y
sudo apt install pritunl-client-electron
sudo apt update -y
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt upgrade -y

sudo apt update -y
sudo apt --fix-broken install -y
sudo apt update -y
sudo apt upgrade -y

echo "----------> INSTALLATION COMPLETION 🏁🏁🏁"

#---
#брендмауэр clamav для linux. беречь данный алгоритм установки
#echo "----------> INSTALLING CLAMAV FROM OFFICIAL REPOSITORY"
#sudo apt-get install clamav clamav-daemon -y
#sudo apt-get update && sudo apt-get upgrade -y
#sudo sed -i -e "s/^NotifyClamd/#NotifyClamd/g" /etc/clamav/freshclam.conf
#sudo systemctl stop clamav-freshclam
#sudo freshclam
#sudo systemctl start clamav-freshclam

#cd /var/lib/clamav/
#wget https://www.danami.com/hotfix/main.cvd
#wget https://www.danami.com/hotfix/daily.cld
#chown clamav:clamav main.cvd
#chown clamav:clamav daily.cld
#sudo systemctl restart clamav-daemon

#sudo systemctl status clamav-freshclam
#sudo systemctl status clamav-daemon
