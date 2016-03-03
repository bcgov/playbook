FROM tcnksm/centos-ruby:2.1
MAINTAINER sheaphillips <shea.phillips@gmail.com>

RUN yum -y install nodejs && gem install jekyll --no-ri --no-rdoc

ADD . /playbook

WORKDIR /playbook

RUN bundle install && jekyll build --trace

EXPOSE 4000

CMD ["jekyll serve --no-watch --verbose --skip-initial-build"]

