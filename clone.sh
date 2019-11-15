#!/bin/bash

git="docker run -ti --rm -v $(pwd):/git bwits/docker-git-alpine"
clone="clone"
url="https://github.com/drumpaul/blackbox_arm64.git"

$git $clone $url
