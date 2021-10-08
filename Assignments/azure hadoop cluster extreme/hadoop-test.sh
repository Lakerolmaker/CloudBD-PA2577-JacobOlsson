#!/usr/bin/env sh

hadoop jar /usr/local/hadoop-3.2.2/share/hadoop/mapreduce/hadoop-mapreduce-examples-3.2.2.jar wordcount input output

hdfs dfs -cat output/* | head -30

hdfs dfs -rm -r -f output
