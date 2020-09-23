sudo /opt/puppetlabs/server/bin/puppetserver ca setup
sudo systemctl start puppetserver
sudo systemctl enable puppetserver
systemctl status puppetserver



#sudo /opt/puppetlabs/server/bin/puppetserver ca sign --certname puppetserver007
