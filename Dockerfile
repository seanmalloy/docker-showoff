FROM centos:latest

MAINTAINER Sean Malloy

RUN yum update -y

RUN yum install -y ruby
RUN yum install -y ruby-devel
RUN yum install -y make
RUN yum install -y gcc
RUN yum install -y tar
RUN yum install -y patch
RUN yum install -y gcc-c++
RUN yum install -y zlib
RUN yum install -y libxslt-devel
RUN yum install -y libxml2-devel

RUN gem install nokogiri -- --use-system-libraries
RUN gem install showoff
RUN gem update showoff

RUN mkdir -p /srv/showoff

WORKDIR /srv/showoff

VOLUME ["/srv/showoff"]

EXPOSE 9090

CMD ["showoff", "serve"]
