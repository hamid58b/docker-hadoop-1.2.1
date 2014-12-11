/etc/init.d/sshd start

cd /
git clone https://github.com/hughbrien/appdynamics-agent.git

git clone https://github.com/hughbrien/docker-hadoop-1.2.1.git
cp docker-hadoop-1.2.1/*xml /opt/hadoop/hadoop/conf
cp /docker-hadoop-1.2.1/hadoop-env.sh  /opt/hadoop/hadoop/conf/

export JAVA_HOME=/usr/java/default
export HADOOP_OPTS=-Djava.net.preferIPv4Stack=true

/opt/hadoop/hadoop/bin/hadoop namenode -format
cd / 

wget http://www.gutenberg.org/ebooks/25665.epub.noimages?session_id=92c8b92a1db8f09df509d3a32ba744f545bfbf27
