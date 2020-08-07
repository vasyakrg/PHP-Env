#!/bin/bash

[[ ! -f .env ]] && {
    cp env.example .env
    echo "first init, change .env for youself !"
    exit 1
}

#sh postgresbackup.sh
docker-compose down
docker volume rm php_volume_psql
