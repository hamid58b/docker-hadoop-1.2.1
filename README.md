docker-hadoop-1.2.1
===================

## Build Docker Apache 1.2.1 Container.   

Often when we use Apache Hadoop and would like to make a custom build (stock or forked) you'll have to rebuild the whole Hadoop, native libs, etc ... which takes 30+ minutes, and carries lots of dependencies (libraries, protobuf, etc - at a given version).

Hadoop 1.2.1 BaseInstall
http://tecadmin.net/steps-to-install-hadoop-on-centosrhel-6/

Docker Build based on the Above installation: 
https://github.com/hughbrien/docker-hadoop-1.2.1

Install boot2docker and enable it.

Install Docker

```

boot2docker shellinit

git clone https://github.com/hughbrien/docker-hadoop-1.2.1

cd ./docker-hadoop-1.2.1

docker build -t <yourname>/docker-hadoop-1.2.1 .

docker run -d -i -t -p 50030:50030 -p 50070:50070 -p 50060:50060 --name "node1" hughbrien/docker-hadoop-1.2.1 /bin/bash

docker exec -it nodeX /bin/bash
```


May have to run bin/hadoop namenode -format 

May also have to manually start /etc/init.d/sshd start


## Build the image
```
docker build -t hughbrien/docker-hadoop-1.2.1 . 
```

## Run the container
```
docker run -d -i -t -p 50030:50030 -p 50070:50070 -p 50060:50060 --name "node1" hughbrien/docker-hadoop-1.2.1 /bin/bash
```

## Open a Shell in the Container
```
docker exec -it  node2 /bin/bash
```
