sudo /usr/bin/apt-get update

sudo apt-get install -y apache2
sudo apt-get install -y vsftpd

sudo systemctl start vsftpd
sudo systemctl enable vsftpd

sudo ufw allow 20/tcp
sudo ufw allow 22/tcp

sudo chown -R vagrant /var/www
sudo chown -R www-data:www-data /var/www


sudo -- sh -c -e "echo '
local_root=/
pasv_address=52.166.58.86
connect_from_port_20=YES
pasv_enable=YES
pasv_addr_resolve=YES
pasv_min_port=4242
pasv_max_port=4243
write_enable=YES
allow_writeable_chroot=YES'

>> /etc/hosts"
