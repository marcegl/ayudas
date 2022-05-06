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

