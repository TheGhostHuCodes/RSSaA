# tutor-db

This service expects an existing local backend postgres database instance to
be available with properly set user, password, and database values so that
the following connection string will work:

```
postgres://ezyuser:password@127.0.0.1:5432/ezytutors
```

You should be able to connect to the database using `psql` and the following
command:

```console
psql --host=localhost --username=ezyuser --dbname=ezytutors
```

The easiest way to set up a development database is using the included
`docker-compose.yml` file by executing the following command in the terminal:

```console
docker-compose up --detach
```

When you are done with this stack you can tear it down using:

```console
docker-compose down
```