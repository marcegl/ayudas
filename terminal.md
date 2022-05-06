### extraer archivos 

```
tar xvzf dir_archivo -C dir_ubicacion
```

### crear archivo con texto

Ej: crear acceso de aplicación

```shell
cat << EOF > ~/.local/share/applications/postman2.desktop
[Desktop Entry]
Name=Postman
GenericName=API Client
X-GNOME-FullName=Postman API Client
Comment=Make and view REST API calls and responses
Keywords=api;
Exec=/opt/Postman/Postman
Terminal=false
Type=Application
Icon=/opt/Postman/app/resources/app/assets/icon.png
Categories=Development;Utilities;
EOF
```

para poder en el explorador "abrir con" en Exec= al final poner "%F"

crear enlaces

```shell
ln -s /archivo /enlace
```

para enlazar y lanzar directamente en la terminal

```shell
ln -s <dir de archivo> /usr/bin/<nombre>
```

buscar texto dentro del resultado de la terminal

```shell
| grep palabra_buscada
```

Ver  variable

```shell
echo $PATH //variable
```

Despues de modificar el bash compilar

```shell
source .bashrc
```

estado de la bateria

```
syacpi -V
```

sudo lvresize -L+3G /dev/systemVG/lv_var -r

sudo vgs

df -h
