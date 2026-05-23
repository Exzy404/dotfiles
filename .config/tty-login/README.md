# Custom TTY@1 Log In For systemd

![tty login preview](../../assets/tty-login-header.jpg) 

# Archivos involucrados

- `/usr/lib/systemd/system/getty@.service` Archivo de configuracion getty@.service 
- `/usr/local/bin/tty-greeter` Script que mostrara el banner/header ascii de tu eleccion
- `/etc/issue` Header para mostrar


# ¿Solo buscas mostrar un header?
- Modificando el archivo `/etc/issue` podemos simplemene añadir el arte ascii que deseemos mostrar encima de nuestro login tty.

```bash
# Coloca tu arte ascii (preferiblemente no BRAILE si usas tty) en la parte superior del archivo.

\S{PRETTY_NAME} \r (\l) # No debajo de esto, tampoco lo reemplaces si no sabes lo que estas haciendo
```

- Revisa el proceso de abajo si deseas mostrar datos estilo `neofetch` o `fastfetch` o cualquier cosa que implique algun tipo de comando.

# ¿Como instalar?

1. Crea y modifica `/usr/local/bin/tty-greeter` segun lo que quieras mostrar como banner o header  
```bash
$ sudo su
$ touch /usr/local/bin/tty-greeter
$ chmod +x !!:1
$ vim !!:2 
```

Ejemplo: ./tty-greter.sh

2. Crear ~/.config/tty-login/
Crea una carpeta que contenga tu configuracion para facilitar futuras modificaciones

```bash
$ mkdir .config/tty-login
$ cd !!:1
$ ln /usr/local/bin/tty-greeter tty-greeter
$ sudo cp /usr/lib/systemd/system/getty@.service ./getty@service.bak
$ mv ~/getty@.service .config/tty-login
```

3. Deshabilitar el servicio de tu display manager

```bash
sudo systemctl disable lightdm.service
```

4. Añadirte al grupo `autologin` 
Esto lo hacemos para que no salte el login de nuestro dm

```bash
sudo usermod -aG autologin $USER
```

5. Modificar getty@.service 
- Añade o reemplaza la siguiente linea dentro de el archivo de configuracion de getty@.service

```cnf
[Service]
ExecStart=-/bin/bash -c 'setterm -clear all; /usr/local/bin/tty-greeter; exec /sbin/agetty --noclear %I $TERM'
```

6. Modifica .bash_profile
Añade esta linea de codigo para que cada vez que se inicie sesion dentro de tty1 se ejecute ligthdm y muestre nuestra interfaz grafica.

```bash
[[ -f ~/.bashrc ]] && . ~/.bashrc

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then

  exec sudo systemctl start lightdm
fi
```

# Desinstalar

```bash
$ sudo su
$ systemctl enable lightdm.service #habilitar tu Display Manager
$ gpasswd -d $USER autologin
$ mv -i ~/.config/tty-login/getty@.service.bak /usr/lib/systemd/system/getty@.service

```
