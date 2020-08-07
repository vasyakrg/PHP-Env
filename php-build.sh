#!/bin/bash

[[ ! -f .env ]] && {
    cp env.example .env
    echo "first init, change .env for youself !"
    exit 1
}
source .env

cd images/php

docker build -t ${DOCKER_LOGIN}/${DOCKER_IMAGE} .

[[ $? -eq 0 ]] && docker push ${DOCKER_LOGIN}/${DOCKER_IMAGE}
