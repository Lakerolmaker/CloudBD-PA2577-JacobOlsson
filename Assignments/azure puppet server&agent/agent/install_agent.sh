sudo /opt/puppetlabs/puppet/bin/puppet config set server "puppet"

#sudo /opt/puppetlabs/puppet/bin/puppet config set dns_alt_names "puppet,puppetmaster" --section main
#sudo /opt/puppetlabs/puppet/bin/puppet config set dns_alt_names "puppet,puppetmaster" --section agent
#sudo /opt/puppetlabs/puppet/bin/puppet config set dns_alt_names "puppet,puppetmaster" --section master

sudo /opt/puppetlabs/puppet/bin/puppet config set runinterval "3m" --section agent
sudo /opt/puppetlabs/puppet/bin/puppet config set runinterval "3m" --section main

# adds the ip of the puppet-server to the hosts
ip=$(getent hosts puppetnode.westeurope.cloudapp.azure.com | awk '{ print $1 }')
sudo -- sh -c -e "echo '$ip puppet' >> /etc/hosts"

#sudo /opt/puppetlabs/puppet/bin/puppet ssl bootstrap

sudo /opt/puppetlabs/bin/puppet agent --test --environment env1
