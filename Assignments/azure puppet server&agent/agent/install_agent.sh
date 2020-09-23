sudo /opt/puppetlabs/puppet/bin/puppet config set server "puppet"

#sudo /opt/puppetlabs/puppet/bin/puppet config set dns_alt_names "puppet,puppetmaster" --section main
#sudo /opt/puppetlabs/puppet/bin/puppet config set dns_alt_names "puppet,puppetmaster" --section agent
#sudo /opt/puppetlabs/puppet/bin/puppet config set dns_alt_names "puppet,puppetmaster" --section master
sudo /opt/puppetlabs/puppet/bin/puppet config set runinterval "3m" --section main
sudo /opt/puppetlabs/puppet/bin/puppet config set environment "env1" --section main


sudo -- sh -c -e "echo '10.0.0.4 puppet puppet-master' >> /etc/hosts"

#sudo /opt/puppetlabs/puppet/bin/puppet ssl bootstrap

/opt/puppetlabs/bin/puppet agent --test
