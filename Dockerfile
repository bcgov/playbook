FROM tcnksm/centos-ruby:2.1
MAINTAINER sheaphillips <shea.phillips@gmail.com>

RUN gem install jekyll --no-ri --no-rdoc

ADD .

RUN jekyll build --trace

EXPOSE 4000

CMD ["jekyll serve --no-watch --verbose --skip-initial-build"]

