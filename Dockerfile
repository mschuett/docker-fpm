FROM centos:7

RUN yum update

RUN yum install -y ruby \
	gcc-c++ make automake autoconf zlib-devel apr-devel apr-util-devel \
	ruby-rdoc ruby-devel rpm-build

RUN gem install --no-ri --no-rdoc fpm

WORKDIR /build

ENTRYPOINT ["fpm"]

CMD ["./"]
