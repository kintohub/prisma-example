# Prisma2 example on KintoHub!

Basic example of getting prisma2 working locally + remotely on KintoHub.

## Requirements

* Install docker 2.x

## Setup Locally

1) run `docker-compose up -d`
2) run `npm install`
3) run `npx ts-node index.ts`

# Updating your schema.sql

1) run `docker-compose build`
2) run `docker-compose up -d`
3) run `npx prisma2 introspect`
4) run `npx prisma2 generate`

This will reapply the schema - ensure your schema.sql file will run successfully when applying a second time (IE: Use CREATE TABLE IF NOT EXISTS) so it does not error

## How to get on kintohub

### Create a project with postgres

1) Go to KintoHub and create a project and click on "add blocks" and find postgres
2) Change the password to what you want and make sure to remember it!
3) Setup the database name (which is default empty).

### Create a migration job to apply sql schema
1) Create a job kintoblock
2) Setup environment variables in the settings in the top left (you can paste the below)
```
DB_NAME={put-in-the-db-name-you-chose}
PGPASSWORD={put-in-the-pass-you-chose}
DB_USER=postgres
DB_HOST=cs-postgres
```

3) Deploy the new job into the project with the postgres you deployed

### Create a backend api for your typescript project

1) Go to kintohub and create a microservice block
2) Language choose nodejs, version latest
3) Set the build command `npm install && npx prisma2 generate`
4) Set the run command `npx ts-node index.ts`

Once the build is successful, add it to your deployment
