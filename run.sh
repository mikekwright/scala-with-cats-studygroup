#!/usr/bin/env bash
#vim :set filetype=sh:

IMAGE_NAME=${IMAGE_NANE:-local-almond}

cd "$(dirname $0)"

if [[ -z $NO_BUILD ]]; then
  docker build -t ${IMAGE_NAME} .
fi

docker run -it --rm --workdir /notebooks -v $PWD/notebooks:/notebooks -p 8888:8888 ${IMAGE_NAME}

