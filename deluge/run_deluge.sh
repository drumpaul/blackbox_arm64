#!/bin/bash

#DA TESTARE
#FONTE https://hub.docker.com/r/linuxserver/deluge

docker create \
  --name=deluge \
  --net=host \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=timezone \
  -e UMASK_SET=022 `#optional` \
  -e DELUGE_LOGLEVEL=error `#optional` \
  -v /path/to/deluge/config:/config \
  -v /path/to/your/downloads:/downloads \
  --restart unless-stopped \
  linuxserver/deluge
