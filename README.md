# docker-mm-tute-elasticsearch
Run the elasticsearch server with kopf, aws, and bigdesk plugins
Also configure the es server to publish its ip based on the aws local_ip so that ec2 discovery works properly

*Example run
docker run -p 9200:9200 -p 9300:9300 rsmith/docker-mm-elasticsearch

##Docker 
* ES_JAVA_OPTS = -Xms4g -Xmx4g
* ES_HEAP_SIZE = 4g


## Linux
* Disable swapping - sudo swapoff -a
* File descriptors - sysctl -w vm.max_map_count=262144

