#!/bin/bash

case $1 in
  clean)
    docker run --rm -it -v "$PWD:/srv/jekyll" -p 4000:4000 -u $(id -u):$(id -g) pages jekyll clean
    ;;
  build)
    docker run --rm -it -v "$PWD:/srv/jekyll" -p 4000:4000 -u $(id -u):$(id -g) pages jekyll build
    ;;
  serve)
    docker run --rm -it -v "$PWD:/srv/jekyll" -p 4000:4000 -u $(id -u):$(id -g) pages jekyll serve -H 0.0.0.0
    ;;
  help)
    docker run --rm -it -v "$PWD:/srv/jekyll" -p 4000:4000 -u $(id -u):$(id -g) pages
    ;;
  *)
    echo "$0 (clean|build|serve|help)"
    ;;
esac
