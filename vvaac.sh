#/bin/bash


#for ubuntu 18.04
#remove virtual-box if installed

sudo apt install software-properties-common apt-transport-https wget curl -y
#
sudo apt remove virtualbox virtualbox-5.2 -y
#
# installation virtual-box
#
sudo apt update -y
sudo apt-get install gcc make linux-headers-$(uname -r) dkms -y
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian bionic contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo apt update -y
sudo apt-get install virtualbox-6.0 -y
#
#installation vagrant
#
wget --directory-prefix=/var https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.deb
#
sudo dpkg -i  --force-all /var/vagrant_2.2.4_x86_64.deb
#
#installation ansible
#
sudo apt install software-properties-common apt-transport-https -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update -y
sudo apt install ansible -y
#
# #installation atom
#
snap install atom --classic
#
# #installation chefdk
#
curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable
#
#install gem
wget --directory-prefix=/var https://makandracards.com/makandra/716-install-rubygems-on-ubuntu-debian/attachments/151
sudo dpkg -i  --force-all /var/rubygems_1.8.7-1_amd64.deb
chef gem  install kitchen-vagrant -y
chef gem  install kitchen-ansible -y
# #update and upgrade
sudo apt update -y
sudo apt upgrade -y
