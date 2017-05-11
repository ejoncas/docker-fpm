FROM amazonlinux:2017.03

MAINTAINER jonatan.crespin@messagemedia.com.au

ENV VERSION=1.8.1

RUN yum install -y ruby-devel libffi-devel libxml2 libxslt libxslt-devel libxml2-devel gcc rpm-build
RUN gem install fpm --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fpm"]
CMD ["--help"]
