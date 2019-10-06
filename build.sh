#!/usr/bin/env bash

curl -L -O https://github.com/gohugoio/hugo/releases/download/v0.56.2/hugo_extended_0.56.2_Linux-64bit.tar.gz
tar -xzf hugo_extended_0.56.2_Linux-64bit.tar.gz

./hugo -v