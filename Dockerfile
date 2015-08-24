FROM centos:6
MAINTAINER Jonas Otten <jotten@eonerc.rwth-aachen.de>
COPY CentOS-Base.repo /etc/yum.repos.d/CentOS-Base.repo
RUN sed -i 's/https/http/g' /etc/yum.repos.d/*.repo
RUN rm /etc/yum.repos.d/CentOS-Debuginfo.repo
RUN rm /etc/yum.repos.d/CentOS-fasttrack.repo
RUN rm /etc/yum.repos.d/CentOS-Media.repo
RUN rm /etc/yum.repos.d/CentOS-Vault.repo
RUN yum clean all 
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
