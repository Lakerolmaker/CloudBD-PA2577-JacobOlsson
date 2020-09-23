#sudo puppet module install puppet-nodejs --version 8.0.0


#sudo /opt/puppetlabs/puppet/bin/gem install r10k
#/opt/puppetlabs/puppet/bin/r10k version
#cd /vagrant
#sudo /opt/puppetlabs/puppet/bin/r10k puppetfile install --verbose

sudo /usr/bin/apt-get update
sudo apt install -y nodejs
node --version
sudo apt install -y npm
cd /vagrant/tool
npm install
#npm start
