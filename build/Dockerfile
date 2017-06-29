FROM centos:7

LABEL version=0.3
RUN yum install -y bc sudo which crontabs.noarch tar

RUN curl -sL bit.ly/zinst-install |bash
RUN zinst i zinst_simple_server -stable 2> /dev/null
EXPOSE 80

RUN yum clean all; yum clean all

ENTRYPOINT ["/usr/bin/zinst", "run", "package_server"]
