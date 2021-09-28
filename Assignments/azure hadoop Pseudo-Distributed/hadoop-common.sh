#!/usr/bin/env bash

export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

export HADOOP_VER=hadoop-3.2.2
export HADOOP_ROOT_ROOT=/usr/local
export HADOOP_ROOT=$HADOOP_ROOT_ROOT/$HADOOP_VER
export HADOOP_HOME=$HADOOP_ROOT
# export HADOOP_PREFIX=$HADOOP_HOME

export PATH=$PATH:$HADOOP_HOME/sbin:$HADOOP_HOME/bin


# Set further environment variables (for Pseudo-mode)
export HADOOP_MAPRED_HOME=$HADOOP_HOME
export HADOOP_COMMON_HOME=$HADOOP_HOME
export HADOOP_HDFS_HOME=$HADOOP_HOME
export HADOOP_YARN_HOME=$HADOOP_HOME
export HADOOP_COMMON_LIB_NATIVE_DIR=$HADOOP_HOME/lib/native
export HADOOP_INSTALL=$HADOOP_HOME

export HADOOP_LOG_DIR=/tmp/hadoop-logs
# export YARN_LOG_DIR=/tmp/hadoop-logs

export PATH=$PATH:$HADOOP_HOME/bin

export HDFS_NAMENODE_USER="root"
export HDFS_DATANODE_USER="root"
export HDFS_SECONDARYNAMENODE_USER="root"
export YARN_RESOURCEMANAGER_USER="root"
export YARN_NODEMANAGER_USER="root"
