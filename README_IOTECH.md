# Zigbee2MQTT IOTech Docker Instructions

### Build
In order to build a docker image of Zigbee2MQTT, use the following command within the current directory:

    docker build -f docker/Dockerfile -t zigbee2mqtt-iotech .

### Run
To then run the Zigbee2MQTT docker image created using the previous build command, use the following:

    docker run \
       --name zigbee2mqtt \
       --network=host \
       --restart=unless-stopped \
       --device= PATH_TO_COORDINATOR_DEVICE \
       -p 8080:8080 \
       -v $(pwd)/data:/app/data \
       -v /run/udev:/run/udev:ro \
       -e TZ=Europe/Amsterdam \
       zigbee2mqtt-iotech
