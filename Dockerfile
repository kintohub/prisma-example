FROM smartroadsense/postgres-cli:latest

COPY schema.sql schema.sql

ENTRYPOINT psql -h postgres -d hello-prisma -U postgres -f schema.sql
