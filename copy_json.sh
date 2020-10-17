#!/bin/bash

# copy the json file into HDFS location

if [ $# -ne 1 ]
then
     echo "usage: run the script with location of store.json file like '/tmp/store.json"
     exit
fi

`hdfs dfs -mkdir -p /tmp/stores`

`hdfs dfs -put -f $1 /tmp/stores`
