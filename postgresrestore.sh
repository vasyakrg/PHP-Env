DB_CONTAINER=docker_postgres_1
DB_NAME=pingdb
DB_USER=postgres
LOCAL_DUMP_PATH="backup/"

cat "${LOCAL_DUMP_PATH}""${DB_NAME}".tar | docker exec -i "${DB_CONTAINER}" pg_restore -Ft --clean -U "${DB_USER}" -d "${DB_NAME}"
echo "restore db complete"
