#!/bin/sh

[[ ! -f .env ]] && {
    cp env.example .env
    echo "first init, change .env for youself !"
    exit 1
}
source .env

now="$(date +'%d%m%Y_%H_%M_%S')"
CONTAINER_DB=${CONTAINER_DB}
POSTGRES_DB=${POSTGRES_DB}
POSTGRES_USER=${POSTGRES_USER}
LOCAL_DUMP_PATH="backup/"

docker exec -u ${POSTGRES_USER} "${CONTAINER_DB}" pg_dump -Ft -d "${POSTGRES_DB}" > "${LOCAL_DUMP_PATH}""${POSTGRES_DB}"-"${now}".tar

echo "backup complete"
