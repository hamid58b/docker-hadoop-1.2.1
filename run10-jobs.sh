

/opt/hadoop/hadoop/bin/hadoop fs -rmr /wordcount-out/*
/opt/hadoop/hadoop/bin/hadoop jar /opt/hadoop/hadoop/hadoop-examples-1.2.1.jar  wordcount /wordcount-in /wordcount-out/run1
/opt/hadoop/hadoop/bin/hadoop jar /opt/hadoop/hadoop/hadoop-examples-1.2.1.jar  wordcount /wordcount-in /wordcount-out/run2
/opt/hadoop/hadoop/bin/hadoop jar /opt/hadoop/hadoop/hadoop-examples-1.2.1.jar  wordcount /wordcount-in /wordcount-out/run3
/opt/hadoop/hadoop/bin/hadoop jar /opt/hadoop/hadoop/hadoop-examples-1.2.1.jar  wordcount /wordcount-in /wordcount-out/run4
/opt/hadoop/hadoop/bin/hadoop jar /opt/hadoop/hadoop/hadoop-examples-1.2.1.jar  wordcount /wordcount-in /wordcount-out/run5
