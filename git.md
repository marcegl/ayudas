# Uso de GIT

## Tips 

### Cambiar a conexion ssh y evitar validar en cada push cambiar 
```shell
git remote set-url origin git@github.com:<Username>/<Project>.git
```

### Cambiar de rama
```
git checkout -b change_alice
```
con "-b" creamos si no existe

### Update del gitignore
```
git rm -r --cached .
git add .
git commit -m ".gitignore is now working"
```
sin esto al modificar el gitignore no toma los cambios por defecto.

### Borrar cambios sin commit
```
git reset --hard
```

## Para manejar multiples ssh key
### Crear la key
```
ssh-keygen -t ed25519 -C "user@domain.com"
```
*siempre subir .pub a las plataformas*
### Usar diferentes Key por dominio
Editar config
```
code ~/.ssh/config
```
Agregar dominios como el ejemplo
```
# github account
Host github.com
HostName github.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa_myaccount_github

# gitlab account
Host gitlab.com
HostName gitlab.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa_myaccount_gitlab

# gitlab company account
Host gitlab.my_company.com
HostName gitlab.my_company.com
PreferredAuthentications publickey
IdentityFile ~/.ssh/id_rsa_mycompanyaccount_gitlab
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
