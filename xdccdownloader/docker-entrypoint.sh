#!/bin/bash
set -e

if [ "$1" = 'xdcc-web' ]; then
   exec gosu /etc/init.d/XdccDownloaderWeb start "$@"
fi

exec "$@"
