#!/usr/bin/env zsh
docker run -p 3449:3449 -p 7888:7888 -v "$PWD":/"$PWD" -it --rm --name figwheel-docker figwheel-docker
