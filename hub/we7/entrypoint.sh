#!/bin/bash

 set -eux
 
 /etc/init.d/php7.4-fpm start
 /etc/init.d/nginx start

 mkdir -p /data/www/web
 chmod -R 777 /data/www
 mv /tmp/install.php  /data/www/web

tail -f  /etc/hosts
