#!/bin/sh

envsubst '${FRONTEND_URL} ${BACKEND_URL} ${HOST_URL}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"
