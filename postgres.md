#### Levantar base de datos

```shell
docker-compose -f postgres-composer.yml up -d
```

#### administrar base de datos

```shell
docker exec -ti nombre_contenedor psql -U postgres
```

#### crear password

```psql
\password
```

#### host en pgadmin

seria el nombre de la imagen que funciona dentro del contener como host bridge

```
postgres_container
```

#### levantar backup

```shell
cat file | docker exec -i {docker-postgres} pg_restore -U {user} -d {database_name}
```

```shell
cat db_backup | docker exec -i postgres_container pg_restore -U postgres -d bursatil
```

crear db

```
docker exec -it postgres_container psql -U postgres -c "create database bursatil"
```

