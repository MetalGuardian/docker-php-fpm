#!/bin/bash
set -e

# if command starts with an option, prepend php5-fpm
if [ "${1:0:1}" = '-' ]; then
	set -- php5-fpm "$@"
fi

exec "$@"
