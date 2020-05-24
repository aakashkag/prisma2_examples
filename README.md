# lms-server

It's backend(server side) code repository

## Technology

Database: Postgres
Language: Node JS
Other: GraphQL + Prisma2

## Example Query and Mutation

Note: check doc folder for example query and mutation

## Setup

Create db tables if needed:

> sudo psql -h localhost -d prismaexample -U postgres -p 5432 -a -q -f ./prisma/LMS_postgres_create_v1.sql

1. Install all dependency
    > npm install
2. Sync schema.prisma with database.
    > npx prisma introspect
3. Generate Client
    > npx prisma generate
4. Now run application
    > npm run dev

Note: Make sure you are running correct environment

## Reference Links:

1. [https://github.com/prisma/prisma-examples/tree/master/javascript/graphql-apollo-server](https://github.com/prisma/prisma-examples/tree/master/javascript/graphql-apollo-server)
2. [https://www.prisma.io/](https://www.prisma.io/)
3. [https://graphql.org/](https://graphql.org/)
4. [https://www.postgresql.org/](https://www.postgresql.org/)

## Developer Help:

Aakash Kag:
[https://www.linkedin.com/in/aakashkag/](https://www.linkedin.com/in/aakashkag/)
