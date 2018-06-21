FROM bde2020/hadoop-base:1.1.0-hadoop2.7.1-java8
MAINTAINER Ivan Ermilov <ivan.s.ermilov@gmail.com>

HEALTHCHECK CMD curl -f http://localhost:50070/ || exit 1

ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name
RUN mkdir -p /hadoop/dfs/name
VOLUME /hadoop/dfs/name

ADD run.sh /run.sh
RUN chmod a+x /run.sh
ADD extra.sh /extra.sh
RUN chmod a+x /extra.sh
RUN /extra.sh

EXPOSE 50070

CMD ["/run.sh"]
