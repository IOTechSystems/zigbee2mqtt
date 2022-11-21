#!/bin/sh
. ./scripts/env.sh

docker rmi $EXP/zigbee2mqtt:$VER-$ARCH
