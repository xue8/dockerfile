#!/bin/bash

set -eux
 
/etc/init.d/php7.4-fpm start
/etc/init.d/nginx start

mkdir -p /data/www/web
mv /tmp/*  /data/www/web
chmod -R 777 /data/www

tail -f  /etc/hosts
