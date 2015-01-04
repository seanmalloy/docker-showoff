FROM centos:centos7

MAINTAINER Sean Malloy

RUN yum update -y

RUN yum install -y git
RUN yum install -y ruby
RUN yum install -y ruby-devel
RUN yum install -y make
RUN yum install -y gcc
RUN yum install -y tar
RUN yum install -y patch
RUN yum install -y gcc-c++

RUN gem install showoff
RUN gem update showoff

EXPOSE 9090

