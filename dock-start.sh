#!/bin/bash

docker-compose pull

docker-compose up -d
#echo "staring db restore"
#sleep 5
#sh postgresrestore.sh
