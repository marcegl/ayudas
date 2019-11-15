## Ejecutar cassandra por docker

```shell
sudo docker pull cassandra
sudo mkdir data
sudo chown 143:143 data
sudo docker run --name cassandra_docker -d -e CASSANDRA_ADMIN_PASSWORD=secretillo -p 9042:9042 -v `pwd`/data:/var/lib/cassandra -d cassandra
```

```shell
sudo docker exec -it cassandra_docker 'bash' -c 'cqlsh '`docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' cassandra_docker`' -u admin -p secretillo'
```

