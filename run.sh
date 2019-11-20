#!/usr/bin/env bash
#vim :set filetype=sh:

IMAGE_NAME=${IMAGE_NANE:-almondsh/almond:latest}

cd "$(dirname $0)"
docker run -it --rm --workdir /notebooks -v $PWD/notebooks:/notebooks -p 8888:8888 almondsh/almond:latest
#docker run -it --rm -v $PWD/notebooks:/notebooks -p 8888:8888 almondsh/almond:latest

#org.typelevel:cats-core_2.12:2.0.0

