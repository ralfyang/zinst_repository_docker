FROM centos:6.7
LABEL version="0.1"
## Source Code Repo


## App dir create
RUN mkdir -p /data

#WORKDIR /usr/src/app

## Install app dep.
#COPY ./package.json /usr/src/app/

#RUN groupadd wheel
RUN yum  install curl bc telnet sudo initscripts.x86_64 -y

RUN curl -sL bit.ly/online-install |bash

RUN zinst  i gsshop_httpd_conf_pkgdist  gsshop_httpd_server -stable

EXPOSE 80

RUN yum clean all; yum clean all

#CMD [ "/usr/bin/zinst", "run", "httpd" ]
ENTRYPOINT service httpd start && tailf /data/logs/httpd/package.dist-access_log
