

## Docker composer

```
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

ver puertos activos

```shell
sudo netstat -tulpn | grep LISTEN
```

guardar el contenedor como imagen

```
docker commit <container_id>
```

tag de imagen (ponerle nombre y version)

```
docker image tag <image_id> <nombre>:<tag>
```

crear dockerfile

sirve para para armar una receta en funcion a una imagen

```
#dockerfile
FROM <imagen>

RUN apt-get update && apt-get install figlet -y
```

correr con:

```
docker build -t <imagen>:<tag>
```

ver el historial de la imagen

```
docker image history <image_id>
```

para estar dentro de la terminal 

```
-it
```

```
docker run -it <imagen>
```

entrar a un contenedor corriendo

```
docker exec -it <container_id> sh
```

correr en background 

```
-d
```

```
docker run -d <imagen>
```

montar volumen

```
-v <dir server>:<dir container>:<tipo de acceso>
```

```
docker run -v /root/mi-sitio/index.html:/usr/share/nginx/html/index.html:ro -d nginx
```

exponer puerto

```
-p <puerto server>:<puerto contenedor>
```

networking

- brigde: puente a la interfaz de red
- host: usa la misma IP de la maquina
- overlay: red virtual entre varios nodos
- macvlan: asigna mac al contenedor permitiendo correr el contenedor como un server mas
- none: sin red

```
network:
	<nombre de red>lan:
		driver: <tipo denetworking>maclan
		driver_opts:
			parent: <intefaz de red>eth0
		ipam:
			config:
				subnet: "192.168.0.0/24"
				gateway: "192.168.0.1"
```

dentro de services:

```
network:
	lan:
		ipv4_address: 192.168.0.5
```

