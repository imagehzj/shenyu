FROM ttbb/base:jdk8

WORKDIR /opt/sh

RUN mkdir -p /opt/sh/shenyu && \
cd /opt/sh/shenyu && \
wget -q https://dlcdn.apache.org/incubator/shenyu/2.4.1/apache-shenyu-incubating-2.4.1-admin-bin.tar.gz  && \
wget -q https://dlcdn.apache.org/incubator/shenyu/2.4.1/apache-shenyu-incubating-2.4.1-bootstrap-bin.tar.gz  && \
mkdir /opt/sh/shenyu/admin && \
mkdir /opt/sh/shenyu/bootstrap && \
tar -xf apache-shenyu-incubating-2.4.1-admin-bin.tar.gz -C /opt/sh/shenyu/admin --strip-components 1 && \
tar -xf apache-shenyu-incubating-2.4.1-bootstrap-bin.tar.gz -C /opt/sh/shenyu/bootstrap --strip-components 1 && \
rm -f apache-shenyu-incubating-2.4.1-admin-bin.tar.gz && \
rm -f apache-shenyu-incubating-2.4.1-bootstrap-bin.tar.gz

ENV SHENYU_HOME /opt/sh/shenyu

WORKDIR /opt/sh/shenyu
