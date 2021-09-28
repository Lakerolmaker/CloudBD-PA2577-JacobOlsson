#!/usr/bin/env bash

source hadoop-common.sh

hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.2.jar wordcount input output

hdfs dfs -cat output/*
