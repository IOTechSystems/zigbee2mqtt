#!/bin/sh
. ./scripts/env.sh

ARCHIVE=$1

docker build --no-cache --tag $EXP/zigbee2mqtt:$VER-$ARCH --build-arg BUILD_VER=$VER --build-arg BUILD_SHA=$SHA --file ./docker/Dockerfile

if [ "$ARCHIVE" = true ]; then

fi