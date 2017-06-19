# docker-spark-statsd-jar-generator
spark-statsd-jar-generator for docker

#How to use it :
docker run -it -v /tmp/:/mnt/ --name docker-spark-statsd-jar-generator docker-spark-statsd-jar-generator:latest bash /tmp/toto.sh <SCALA_VERSION> <SPARK_VERSION>

	ex : docker run -it -v /tmp/:/mnt/ --name docker-spark-statsd-jar-generator docker-spark-statsd-jar-generator:latest bash /tmp/toto.sh 2.11.8 2.1.1

#wait wait wait
+/- 80s

#Fetch jar file in your /tmp/
