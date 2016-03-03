FROM ubuntu:wily
MAINTAINER sheaphillips <shea.phillips@gmail.com>

RUN \
  apt-get update && \
  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    build-essential \
    python \
    ruby \
    ruby-dev \
    nodejs

RUN gem install jekyll --no-ri --no-rdoc

ADD .

RUN jekyll build --trace

EXPOSE 4000

CMD ["jekyll serve --no-watch --verbose --skip-initial-build"]

