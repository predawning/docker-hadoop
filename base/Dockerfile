FROM bde2020/hadoop-base:1.1.0-hadoop2.7.1-java8 

ADD entrypoint.sh /entrypoint.sh
RUN chmod a+x /entrypoint.sh
RUN apt-get install -y python

ENTRYPOINT ["/entrypoint.sh"]
