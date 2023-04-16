
#!/bin/bash

#curl https://gist.githubusercontent.com/katakumby/466f3ae800609abcdaede60bc2e26c0f/raw/f95a24a53a9d87f01551ef7c03c535e2c6ce173c/installer.sh | bash
#This script will automatically install basic pentesting software like kali linux tools, wpscan, metasploit etc.
sudo apt-get update

sudo apt-get upgrade -y

sudo apt-get dist-upgrade -y

sudo apt-get install nmap -y

sudo apt-get install netcat -y

sudo apt-get install aircrack-ng -y

sudo apt-get install dsniff -y

sudo apt-get install ettercap-text-only -y

sudo apt-get install w3af -y

sudo apt-get install kismet -y

sudo apt-get install scapy -y

sudo apt-get install john -y

sudo apt-get install unzip -y

sudo apt-get install nikto -y

sudo apt-get install tor -y

sudo apt-get install git -y

sudo git clone https://github.com/LionSec/katoolin.git

sudo cp katoolin/katoolin.py /usr/bin/katoolin

sudo chmod ugo+x /usr/bin/katoolin

sudo apt-get install network-manager-openvpn network-manager -y

sudo apt-get install build-essential libssl-dev libreadline-dev libpq5 libpq-dev libreadline5 libpcap-dev openjdk-8-jre git-core autoconf postgresql libsqlite3-dev pgadmin3 curl zlib1g-dev libxml2-dev curl zlib1g-dev libxslt1-dev vncviewer libyaml-dev -y

sudo apt install libncurses-dev -y

sudo apt install python-pip python-dev

sudo pip install --upgrade pip

sudo apt-get install htop -y

#WPSCAN (https://wpscan.org/)
sudo apt-get install libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev build-essential libgmp-dev zlib1g-dev

cd ~
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
rvm install 2.4.1
rvm use 2.4.1 --default
echo "gem: --no-ri --no-rdoc" > ~/.gemrc
git clone https://github.com/wpscanteam/wpscan.git
cd wpscan
gem install bundler
bundle install --without test

#Metasploit (https://gist.github.com/dafthack/8aa4ff60cd9352448a372ce1a7b2e27e )
cd ~
curl -sSL https://rvm.io/mpapis.asc | gpg --import -
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
