docker-hadoop-1.2.1
===================

## Build Apache Hadoop
Often when we use Apache Hadoop and would like to make a custom build (stock or forked) you'll have to rebuild the whole Hadoop, native libs, etc ... which takes 30+ minutes, and carries lots of dependencies (libraries, protobuf, etc - at a given version).


## Build the image
```
docker build -t hughbrien/docker-hadoop-1.2.1 . 

## Run the container
```
docker run -d -i -t -p 50030:50030 -p 50070:50070 -p 50060:50060 --name "node1" hughbrien/docker-hadoop-1.2.1 /bin/bash
```

docker exec -it  node2 /bin/bash

docker run -d -i -t -p 50030:50030 -p 50070:50070 -p 50060:50060 --name "node1" hughbrien/docker-hadoop-1.2.1 /bin/bash
