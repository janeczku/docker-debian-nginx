#!/bin/sh

set -e

mkdir -p /data/conf/nginx/addon.d
mkdir -p /data/conf/nginx/conf.d
mkdir -p /data/conf/nginx/hosts.d
mkdir -p /data/conf/nginx/nginx.d
chmod 711 /data/conf/nginx

mkdir -p /data/tmp/nginx/client_temp
mkdir -p /data/tmp/nginx/proxy_temp
chmod 711 /data/tmp/nginx

mkdir -p /data/logs
chown -R www:www /data/logs
mkdir -p /data/www
chown -R www:www /data/www

echo "Nginx: Config directories created/updated"
