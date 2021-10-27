#!/usr/bin/env sh

URL="$1"
IMAGE="$2"

docker login && docker build -t $IMAGE $URL && docker push $IMAGE
