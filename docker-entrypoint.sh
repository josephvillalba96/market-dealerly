#!/bin/sh
set -eu

port="${PORT:-8080}"
case "$port" in
  ''|*[!0-9]*)
    echo "PORT must be a numeric port" >&2
    exit 1
    ;;
esac

sed "s/__PORT__/${port}/g" \
  /etc/nginx/conf.d/default.conf.template \
  > /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
