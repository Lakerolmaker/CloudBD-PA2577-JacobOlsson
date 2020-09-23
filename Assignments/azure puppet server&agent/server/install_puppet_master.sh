sudo hostname puppet
sudo systemctl stop firewalld
wget https://apt.puppetlabs.com/puppet6-release-bionic.deb
sudo dpkg -i puppet6-release-bionic.deb
sudo apt update
sudo apt-get install puppetserver -y
sudo /opt/puppetlabs/server/bin/puppetserver --version


#sudo ufw allow 8140/tcp
#sudo iptables -I INPUT -m state --state NEW -m tcp -p tcp --dport 8140 -j ACCEPT

sudo -- sh -c -e "echo '*' >> /etc/puppetlabs/puppet/autosign.conf"
sudo /opt/puppetlabs/puppet/bin/puppet config set autosign "true" --section master
sudo /opt/puppetlabs/puppet/bin/puppet config set allow_duplicate_certs "true" --section master


sudo mv /vagrant/environments/env1 /etc/puppetlabs/code/environments
