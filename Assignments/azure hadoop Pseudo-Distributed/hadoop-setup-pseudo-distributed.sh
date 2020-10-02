#!/usr/bin/env bash

source ./hadoop-common.sh


# Copy files
sudo cp ./hadoop-src-pseudo/* $HADOOP_HOME/etc/hadoop

# Setup HDFS
hdfs namenode -format
start-dfs.sh
start-yarn.sh
