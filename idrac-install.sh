apt install sudo
wget http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2_amd64.deb
sudo dpkg -i libssl1.1_1.1.1f-1ubuntu2_amd64.deb

deb https://linux.dell.com/repo/community/openmanage/iSM/5300/bullseye bullseye main
deb https://linux.dell.com/repo/community/openmanage/910/focal focal main

sudo echo 'deb https://linux.dell.com/repo/community/openmanage/iSM/5300/bullseye bullseye main' | sudo tee -a /etc/apt/sources.list.d/linux.dell.com.sources.list
sudo echo 'deb https://linux.dell.com/repo/community/openmanage/950/focal focal main' | sudo tee -a /etc/apt/sources.list.d/linux.dell.com.sources.list

sudo wget https://linux.dell.com/repo/pgp_pubkeys/0x1285491434D8786F.asc
sudo mv 0x1285491434D8786F.asc /etc/apt/trusted.gpg.d

apt update
apt install  dcism -y
apt install srvadmin-idracadm7 -y

echo "alias racadm='/opt/dell/srvadmin/bin/idracadm7'" >> ~/.bashrc && source ~/.bashrc
