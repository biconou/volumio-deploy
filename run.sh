#!/bin/bash

MUSIC_DIR=/mnt/DATA/musique/
VOLUMIO_DATA_DIR=/mnt/DATA/volumio-data

docker run --restart=always -d --name volumio-snd \
  -e HOST=http://localhost:3000 \
  -p 3000:3000 \
  -v ${MUSIC_DIR}:/var/lib/mpd/music/:ro \
  -v ${VOLUMIO_DATA_DIR}:/data \
  --device /dev/snd \
  jbonjean/volumio