FROM troyswanson/jekyll

ADD . /tmp

RUN gem install rdiscount

RUN jekyll build --trace -s /tmp -d /usr/share/nginx/html
