#!/usr/bin/env bash

source /home/vagrant/hadoop-common.sh
echo $HADOOP_HOME

# Required to run MapReduce Jobs (output ends up here)
hdfs dfs -mkdir /user
hdfs dfs -mkdir /user/vagrant  # Best guess is that <username> should be "vagrant" for now.

# Create a place for input files and copy them there from your local filesystem
hdfs dfs -mkdir input

hdfs dfs -put $HADOOP_HOME/README.txt input


#sudo nano /usr/local/hadoop-3.2.2/etc/hadoop/core-site.xml
#sudo nano /usr/local/hadoop-3.2.2/etc/hadoop/hdfs-site.xml
#sudo nano /usr/local/hadoop-3.2.2/etc/hadoop/yarn-site.xml

#hdfs --daemon start datanode
#hdfs dfs -put /usr/local/hadoop-3.2.2/README.txt input
#sudo rm -r /tmp/*
#hadoop fs -ls /


#worker logs
#sudo nano /tmp/hadoop-logs/hadoop-vagrant-datanode-worker0.log


#namenode logs
#sudo nano /tmp/hadoop-logs/hadoop-vagrant-namenode-master.log

#start
#hdfs namenode -format -force
#start-dfs.sh
