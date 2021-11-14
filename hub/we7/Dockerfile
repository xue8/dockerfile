FROM xue8/amd64-debian:v0.0.1
LABEL maintainer="rongyuexue@gmail.com"

RUN set -eux \
    && apt-get install -y nginx \
    php-fpm \
    php7.4  \
    php-zip \
    php-curl    \
    php-mysql   \
    php-mbstring    \
    php-gd  \
    php-dom

VOLUME /data/

RUN set -eux    \
    && rm -rf /var/log/nginx \
    && mkdir -p /data/log/nginx/    \
    && ln -s -f /data/log/nginx/ /var/log/  \
    && mkdir -p /tmp    \
    && cd /tmp/    \
    && wget https://cdn.w7.cc/download/WeEngine-Laster-Online.zip   \
    && unzip WeEngine-Laster-Online.zip     

RUN set -eux    \
    && rm /etc/nginx/sites-enabled/default

COPY ./www.conf /etc/nginx/conf.d/

COPY ./entrypoint.sh /workspace/

ENTRYPOINT /workspace/entrypoint.sh