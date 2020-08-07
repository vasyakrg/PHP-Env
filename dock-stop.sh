#!/bin/bash

[[ ! -f .env ]] && {
    cp env.example .env
    echo "first init, change .env for youself !"
    exit 1
}

docker-compose stop
