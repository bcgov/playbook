FROM troyswanson/jekyll

ADD . /tmp

RUN gem install rdiscount \
    && chmod -R 777 /var/log/nginx /var/lib/nginx/ \
    && chmod 644 /etc/nginx/*

RUN jekyll build --trace -s /tmp -d /usr/share/nginx/html
