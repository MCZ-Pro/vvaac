#/bin/bash


#for ubuntu 18.04
#remove virtual-box if installed
sudo apt install software-properties-common apt-transport-https wget curl

sudo apt remove virtualbox virtualbox-5.2

#installation virtual-box
sudo apt update
sudo apt-get install gcc make linux-headers-$(uname -r) dkms

wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -

sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian bionic contrib" >> /etc/apt/sources.list.d/virtualbox.list'


sudo apt update
sudo apt-get install virtualbox-6.0

#installation vagrant
wget https://releases.hashicorp.com/vagrant/2.2.4/vagrant_2.2.4_x86_64.deb
mv  vagrant_2.2.4_x86_64.deb ~/Téléchargements
sudo dpkg -i ~/Téléchargements/vagrant_2.2.4_x86_64.deb


#installation ansible

sudo apt install software-properties-common apt-transport-https wget curl

sudo apt-add-repository ppa:ansible/ansible
sudo apt update
sudo apt install ansible

#installation atom

#wget -q https://packagecloud.io/AtomEditor/atom/gpgkey -O- | sudo apt-key add -
#sudo add-apt-repository "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main"
snap install atom --classic
#installation chefdk


curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -P chefdk -c stable



#update and upgrade
sudo apt update
sudo apt upgrade
 
#mouad
