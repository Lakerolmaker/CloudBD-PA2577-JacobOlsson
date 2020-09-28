sudo /opt/puppetlabs/server/bin/puppetserver ca setup
sudo systemctl start puppetserver
sudo systemctl status puppetserver
sudo /opt/puppetlabs/server/bin/puppetserver ca list --all

#sudo systemctl enable /opt/puppetlabs/server/bin/puppetserver
#sudo /opt/puppetlabs/server/bin/puppetserver start

#sudo /opt/puppetlabs/server/bin/puppetserver ca sign --certname puppetserver007
