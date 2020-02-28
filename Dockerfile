FROM smartroadsense/postgres-cli:latest

COPY schema.sql schema.sql

ENTRYPOINT psql -h ${DB_HOST} -d ${DB_NAME} -U ${DB_USER} -f schema.sql
