Para cambiar a conexion ssh y evitar validar en cada push cambiar 

```shell
git remote set-url origin git@github.com:<Username>/<Project>.git
```

Cambiar de rama, con "-b" creamos si no existe

```
git checkout -b change_alice
```

update de gitignore

```
git rm -r --cached .
git add .
git commit -m ".gitignore is now working"
```

borrar cambios sin commit

```
git reset --hard
```

En MacOS se debe crear un archivo en ~/.ssh/config

```
touch ~/.ssh/config
```

Con el contenido de:

```
Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

reemplazar ~/.ssh/id_ed25519 si es distinto
