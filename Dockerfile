FROM centos:6
MAINTAINER Jonas Otten <jotten@eonerc.rwth-aachen.de>
RUN yum install -y epel-release
RUN yum install -y boost-filesystem boost-thread libmicrohttpd logrotate libcurl boost-regex mongodb mongodb-server
COPY testbed-fi-ware.repo /etc/yum/repos.d/testbed-fi-ware.repo
RUN yum install -y contextBroker
RUN chkconfig contextBroker on
RUN mkdir /data
RUN mkdir /data/db
EXPOSE 1026
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT /entrypoint.sh
