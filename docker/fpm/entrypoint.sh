#!/usr/bin/env bash

set -e

if [ "${1:0:1}" = '-' ]; then
	set -- php-fpm "$@"
fi
cd /var/www && composer install -n --no-scripts
cd /var/www && composer install -n -o
exec "$@"
