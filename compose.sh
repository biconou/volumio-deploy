#!/bin/bash

export HOSTNAME=`hostname`

docker-compose down -v

docker-compose --env-file .env.${HOSTNAME} up -d --build

unzip -n plugins/soundcloud.zip -d /mnt/DATA/volumio-data/plugins/music_service/