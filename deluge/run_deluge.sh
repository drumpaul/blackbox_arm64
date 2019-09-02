#!/bin/bash

docker run --name=backstabbing_pare --env="PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" --env="LANG=it_IT.UTF-8" --volume="/home/cotlod:/data" --volume="/data" --expose=53160 -p 8112:8112 --expose=53160/udp --expose=58846 --restart=always --detach=true cotlod/deluge /start.sh
