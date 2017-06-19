#
# Spark-statsd jar generator Dockerfile
#
# https://github.com/
#

# Pull base image.
FROM debian:latest

MAINTAINER hihouhou < hihouhou@hihouhou.com >

# Install git and apt-transport-https
RUN apt-get update && \
    apt-get install -y git apt-transport-https default-jre

#Add repository
RUN echo "deb https://dl.bintray.com/sbt/debian /" | tee -a /etc/apt/sources.list.d/sbt.list && \
    apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2EE0EA64E40A89B84B2DF73499E82A75642AC823

# Update & install packages for sbt
RUN apt-get update && \ 
    apt-get install -y sbt 

# Fetch repository
RUN git clone https://github.com/vidhyaarvind/spark-statsd.git && \
    cd spark-statsd

# Copy toto.sh
COPY toto.sh /tmp/
