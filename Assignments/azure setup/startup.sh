wget https://apt.puppetlabs.com/puppet5-release-$(lsb_release -cs).deb
dpkg -i puppet5-release-$(lsb_release -cs).deb
apt-get -qq update
apt-get install -y puppet-agent
