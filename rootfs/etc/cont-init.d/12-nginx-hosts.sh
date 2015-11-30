#!/usr/bin/with-contenv sh

DEFAULT_HOST_SOURCE_CONF="/conf/default-host.conf"
DEFAULT_HOST_TARGET_CONF="/etc/nginx/hosts.d/default.conf"

if [ "$GENERATE_DEFAULT_HOST" = true ]; then
  cat $DEFAULT_HOST_SOURCE_CONF > $DEFAULT_HOST_TARGET_CONF
  mkdir -p /data/www/default && echo "default host # created on $(date)" > /data/www/default/index.html
  echo "Nginx: Default host generated"
fi

