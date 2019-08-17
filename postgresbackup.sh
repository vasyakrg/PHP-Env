#!/bin/sh
now="$(date +'%d%m%Y_%H_%M_%S')"
DB_CONTAINER=docker_postgres_1
DB_NAME=pingdb
DB_USER=postgres
LOCAL_DUMP_PATH="backup/"

docker exec -u postgres "${DB_CONTAINER}" pg_dump -Ft -d "${DB_NAME}" > "${LOCAL_DUMP_PATH}""${DB_NAME}"-"${now}".tar
docker exec -u postgres "${DB_CONTAINER}" pg_dump -Ft -d "${DB_NAME}" > "${LOCAL_DUMP_PATH}""${DB_NAME}".tar
echo "backup complete"
