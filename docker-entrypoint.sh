#!/bin/sh

envsubst '${FRONTEND_URL} ${BACKEND_URL}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"
