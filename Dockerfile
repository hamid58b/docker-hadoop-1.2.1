# Create an hadoop Image
# Create an hadoop Image

FROM tianon/centos:6.5
MAINTAINER SequenceIQ

USER root

# install dev tools
RUN yum install -y curl which tar sudo openssh-server openssh-clients rsync bunzip2 sshd wget

# install hadoop nativelins tools
RUN yum install -y gcc gcc-c++ autoconf automake libtool zlib-devel cmake git unzip

# passwordless ssh
RUN ssh-keygen -q -N "" -t dsa -f /etc/ssh/ssh_host_dsa_key
RUN ssh-keygen -q -N "" -t rsa -f /etc/ssh/ssh_host_rsa_key
RUN ssh-keygen -q -N "" -t rsa -f /root/.ssh/id_rsa
RUN cp /root/.ssh/id_rsa.pub /root/.ssh/authorized_keys

# java
RUN curl -LO 'http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.rpm' -H 'Cookie: oraclelicense=accept-securebackup-cookie'
RUN rpm -i jdk-7u51-linux-x64.rpm
RUN rm jdk-7u51-linux-x64.rpm
ENV JAVA_HOME /usr/java/default
ENV PATH $PATH:$JAVA_HOME/bin

# devel tools
RUN yum groupinstall "Development Tools" -y
RUN yum install -y cmake zlib-devel openssl-devel

# maven
RUN curl http://www.eu.apache.org/dist/maven/maven-3/3.2.1/binaries/apache-maven-3.2.1-bin.tar.gz|tar xz  -C /usr/share
ENV M2_HOME /usr/share/apache-maven-3.2.1
ENV PATH $PATH:$M2_HOME/bin

RUN mkdir /opt/hadoop
RUN curl -s http://apache.mesi.com.ar/hadoop/common/hadoop-1.2.1/hadoop-1.2.1.tar.gz | tar -xz -C /opt/hadoop
RUN chown -R root /opt/hadoop
RUN cd /opt/hadoop/hadoop-1.2.1
RUN ln -s /opt/hadoop/hadoop-1.2.1 /opt/hadoop/hadoop


RUN /etc/init.d/sshd start
RUN cd /
RUN git clone https://github.com/hughbrien/appdynamics-agent.git
RUN export JAVA_HOME=/usr/java/default





