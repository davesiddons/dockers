#!/bin/bash

# generate ssh key
echo "Y" | ssh-keygen -t rsa -P "" -f configs/id_rsa

# Hadoop build
docker build -f ./hadoop/Dockerfile . -t siddo/hadoop

# Spark
docker build -f ./spark/Dockerfile . -t siddo/hadoop

# PostgreSQL Hive Metastore Server
docker build -f ./postgresql-hms/Dockerfile . -t siddo/hadoop

# Hive
docker build -f ./hive/Dockerfile . -t siddo/hadoop

# Nifi
docker build -f ./nifi/Dockerfile . -t siddo/hadoop

# Edge
docker build -f ./edge/Dockerfile . -t siddo/hadoop

# hue
docker build -f ./hue/Dockerfile . -t siddo/hadoop

# zeppelin
#docker build -f ./zeppelin/Dockerfile . -t siddo/hadoop
