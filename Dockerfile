FROM tcnksm/centos-ruby:2.1
MAINTAINER sheaphillips <shea.phillips@gmail.com>

RUN yum -y install nodejs && gem install jekyll --no-ri --no-rdoc && mkdir /playbook

COPY Gemfile* /playbook/

WORKDIR /playbook

RUN bundle install

ADD . /playbook

RUN jekyll build --trace

EXPOSE 4000

CMD jekyll serve --verbose --skip-initial-build

