FROM centos:7

LABEL version=0.2
RUN yum install -y bc sudo which

RUN curl -sL bit.ly/zinst-install |bash
RUN zinst i zinst_simple_server -stable
EXPOSE 80

RUN yum clean all; yum clean all

ENTRYPOINT ["/usr/bin/zinst", "run", "package_server"]
