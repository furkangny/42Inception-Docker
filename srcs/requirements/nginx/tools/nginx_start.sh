#!/bin/bash

if [ ! -f /etc/ssl/certs/nginx.crt ]; then
echo "Nginx: setting up ssl ...";
openssl req -x509 -nodes -newkey rsa:4096 -keyout /etc/nginx/ssl/inception.key  -out /etc/nginx/ssl/inception.crt -subj "/C=TR/L=Istanbul/O=42/OU=42/CN=fgunay.42.fr/UID=fgunay";
echo "Nginx: ssl is set up!";
fi

exec "$@"

#nodes-> no password
#newkey rsa:4096-> 4096 bit length password