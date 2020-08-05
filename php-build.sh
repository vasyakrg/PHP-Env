#!/bin/bash

cd images/php

docker build -t ${DOCKER_LOGIN}/${DOCKER_IMAGE} .

[[ $? -eq 0 ]] && docker push ${DOCKER_LOGIN}/${DOCKER_IMAGE}
