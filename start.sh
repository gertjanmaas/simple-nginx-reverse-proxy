#!/usr/bin/env bash

cp nginx.tmpl nginx.conf
if [[ -z ${TARGET_URIS} ]] ; then
    echo "No proxy targets supplied!"
    exit 1
fi

URIS=$(echo $TARGET_URIS | tr ";" "\n")
NGINX_UPSTREAM_CONF=""
for uri in $URIS
do
    NGINX_UPSTREAM_CONF="$NGINX_UPSTREAM_CONF server $uri;\n"
done

sed -i "s|___UPSTREAM_SERVERS____|$NGINX_UPSTREAM_CONF|" nginx.conf

mv nginx.conf /etc/nginx/nginx.conf

/usr/sbin/nginx -g "daemon off;"