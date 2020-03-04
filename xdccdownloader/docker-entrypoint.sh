#!/bin/bash
set -e

if [ "$1" = 'xdcc-web' ]; then
   exec /etc/init.d/XdccDownloaderWeb start "$@"
fi

exec "$@"
