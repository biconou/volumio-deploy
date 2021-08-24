#!/bin/bash

MUSIC_DIR="/mnt/DATA/musique/"
VOLUMIO_DATA_DIR="/mnt/DATA/volumio-data"

docker run --restart=always -d --name volumio-pulse \
    -e HOST=http://localhost:3000 \
    -p 3000:3000 \
    -v ${MUSIC_DIR}:/var/lib/mpd/music/:ro \
    -v ${VOLUMIO_DATA_DIR}:/data \
    -v $(readlink $HOME/.config/pulse/$(cat /etc/machine-id)-runtime):/pulse:ro \
    -e PULSE_SERVER=unix:/pulse/native \
    -e PULSE_COOKIE_DATA="$(cat $HOME/.config/pulse/cookie)" \
    -e HOST_USER=$(id -u):$(id -g) \
    -e AUDIO_OUTPUT=pulse \
 jbonjean/volumio
