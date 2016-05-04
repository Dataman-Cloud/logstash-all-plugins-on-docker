FROM java:7

MAINTAINER yma@dataman-inc.com

ENV LOGSTASH_VERSION 2.3.1
ENV LOGSTASH_TAR logstash-all-plugins-2.3.1.tar.gz
ENV LOGSTASH_URL https://download.elastic.co/logstash/logstash/logstash-all-plugins-2.3.1.tar.gz

RUN wget $LOGSTASH_URL && \
    tar -zxf $LOGSTASH_TAR && \
    rm $LOGSTAS_TAR && \
    mv /logstash* /logstash && \
    mkdir /logstash-conf

ADD logstash.conf /logstash-conf/logstash.conf

WORKDIR /logstash

ENTRYPOINT ["bin/logstash -f /logstash/logstash.conf"]
