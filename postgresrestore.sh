#!/bin/bash
source .env

CONTAINER_DB=${CONTAINER_DB}
POSTGRES_DB=${POSTGRES_DB}
POSTGRES_USER=${POSTGRES_USER}
LOCAL_DUMP_PATH="backup/"

cat "${LOCAL_DUMP_PATH}""${POSTGRES_DB}".tar | docker exec -i "${CONTAINER_DB}" pg_restore -Ft --clean -U "${POSTGRES_USER}" -d "${POSTGRES_DB}"
echo "restore db complete"
