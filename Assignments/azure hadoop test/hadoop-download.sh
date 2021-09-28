#!/usr/bin/env bash


export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64


HADOOP_VER=hadoop-3.2.2
HADOOP_ROOT_ROOT=/usr/local
HADOOP_ROOT=$HADOOP_ROOT_ROOT/hadoop
HADOOP_HOME=$HADOOP_ROOT
PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin
sudo apt-get update
sudo apt-get install -y openjdk-8-jdk
echo "export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64" >> /home/vagrant/.bashrc
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Check if run as root
if [ "$(id -u)" != "0" ] ; then
echo "Please use sudo for this script"
exit 1
fi

sudo mkdir -p "$HADOOP_ROOT"
pushd $HADOOP_ROOT
wget http://apache.mirrors.spacedump.net/hadoop/common/$HADOOP_VER/$HADOOP_VER.tar.gz
sudo tar -zxf $HADOOP_VER.tar.gz
rm $HADOOP_VER.tar.gz
mv $HADOOP_VER/* $HADOOP_ROOT
/usr/local/hadoop/bin/hadoop version

#mkdir input
#cp $HADOOP_HOME/*.txt input

#/usr/local/hadoop/bin/hadoop jar /usr/local/hadoop/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.1.jar wordcount input output

#cat output/*
