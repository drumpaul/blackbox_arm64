#!/bin/bash

curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

wget https://raw.githubusercontent.com/drumpaul/blackbox/master/docker-compose.yml

docker-compose up
