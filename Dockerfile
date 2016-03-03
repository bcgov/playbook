FROM ruby:2.2.4-alpine
MAINTAINER sheaphillips <shea.phillips@gmail.com>

RUN gem install jekyll --no-ri --no-rdoc

ADD .

RUN jekyll build --trace

EXPOSE 4000

CMD ["jekyll serve --no-watch --verbose --skip-initial-build"]

