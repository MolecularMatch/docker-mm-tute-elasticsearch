#!/bin/bash

#configure elasticsearch.yml with HOST_IP variable
export LOCAL_IP=$(curl -s 169.254.169.254/latest/meta-data/local-ipv4)
sed -i "s/\HOST_IP/$LOCAL_IP/" /usr/share/elasticsearch/config/elasticsearch.yml
sed -i "s/\CLUSTER_NAME/$CLUSTER_NAME/" /usr/share/elasticsearch/config/elasticsearch.yml

/usr/share/elasticsearch/bin/elasticsearch