#!/bin/bash

[[ ! -f .env ]] && {
    cp env.example .env
    echo "first init, change .env for youself !"
    exit 1
}

docker-compose pull

docker-compose up -d
#echo "staring db restore"
#sleep 5
#sh postgresrestore.sh
