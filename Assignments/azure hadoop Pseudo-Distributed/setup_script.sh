sudo apt-get update
sudo apt-get install -y openjdk-8-jdk
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /home/vagrant/.bashrc

cd /vagrant
./hadoop-download.sh
sh persmissions.sh
./ssh-setup.sh
./hadoop-setup-pseudo-distributed.sh
./hadoop-dfs-populate.sh
#./test-hadoop.sh
