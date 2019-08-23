#!/bin/bash

cd /tmp

wget https://github.com/rancher/rancher-compose/releases/download/v0.12.5/rancher-compose-linux-amd64-v0.12.5.tar.gz

tar xvzf rancher-compose-linux-amd64-v0.12.5.tar.gz

mv rancher-compose-v0.12.5/rancher-compose /usr/local/bin/
