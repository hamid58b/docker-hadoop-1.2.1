docker-hadoop-1.2.1
===================

## Build Apache Hadoop
Often when we use Apache Hadoop and would like to make a custom build (stock or forked) you'll have to rebuild the whole Hadoop, native libs, etc ... which takes 30+ minutes, and carries lots of dependencies (libraries, protobuf, etc - at a given version).

This Docker image contains the build process of Hadoop 2.5.2 nativelibs. Also the 64b version of nativelibs is released at our [RPM repository](http://dl.bintray.com/sequenceiq/sequenceiq-bin/hadoop-native-64-2.5.2.tar).

## Build the image
```
docker build -t hughbrien/docker-hadoop-1.2.1 . 

## Run the container
```
docker run -it --name hadoop-build hughbrien/docker-hadoop-1.2.1 /bin/bash
```
