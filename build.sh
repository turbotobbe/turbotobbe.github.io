#!/bin/bash

JEKYLL_VERSION=$(curl -s "https://pages.github.com/versions.json" | sed -n 's/.*"jekyll": *"\([0-9]*\.[0-9]*\)\.[0-9]*".*/\1/p')
sed -i.bak "s#FROM jekyll/builder.*#FROM jekyll/builder:$JEKYLL_VERSION#g" Dockerfile
rm Dockerfile.bak
docker build -t pages .
