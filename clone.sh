#!/bin/bash

git="docker run -ti --rm -v $(pwd):/git bwits/docker-git-alpine"
clone="clone"
url="https://github.com/drumpaul/blackrancher.git"

$git $clone $url
