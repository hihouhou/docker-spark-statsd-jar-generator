#§/bin/bash

sed -i -e "s/scalaVersion := .*/scalaVersion := \"$1\"/g" /spark-statsd/build.sbt
sed -i -e "s/sparkVersion := .*/sparkVersion := \"$2\"/g" /spark-statsd/build.sbt
cd /spark-statsd && sbt assembly
#find /spark-statsd/target/ -name "spark-statsd-*.jar" | xargs cp /mnt/
find /spark-statsd/target/ -name "spark-statsd-*.jar" -exec cp "{}" /mnt/ \;
echo $(ls /mnt/)
