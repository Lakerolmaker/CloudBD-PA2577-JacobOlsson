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

#dowload QualitasCorpus
#sh qualitas-corpus-download.sh

#read
#hdfs dfs -cat /hadoop/small.seq/indexer/part-r-00000/data
#hdfs dfs -cat /hadoop2/small.seq/expander/part-r-00000


#seq files
#java -jar toSeq.jar QualitasCorpus/ full.seq
#java -jar toSeq.jar QualitasCorpus/QualitasCorpus-20130901r/Systems/ant/ant-1.8.4/src/apache-ant-1.8.4/src small.seq
#hdfs dfs -put full.seq input
#hdfs dfs -put small.seq input


#run hadoop
#hadoop jar hadoopdetector.jar input/small.seq hdfs://master/hadoop/small.seq 128


#transfer
#mkdir /vagrant/seq
#hdfs dfs -get /hadoop/small.seq/* /vagrant/seq
#sudo scp -r /vagrant/seq/ lakerolmaker@81.230.72.203:/home/hadoop
