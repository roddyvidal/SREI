
Vamos a configurar el primer **VirtualHost**, pero para ello tenemos que instalar Wordpress.
Iremos al directorio */var/www* y lo descargaremos aqui para tenerlo todo mas organizado.

1. Ponemos en la linea de comando `wget https://wordpress.org/latest.tar.gz`
2. Descomprimimos con `tar -xzvf latest.tar.gz`

![[Pasted image 20251124230450.png]]

- Movemos wordpress a centro.intranet.
![[Pasted image 20251124230539.png]]

- Le cambiaremos los permisos y propietario con  `chmod` y `chown`

![[Pasted image 20251124230743.png]]

- Ahora configuraremos el archivo el virtual hosts para este dominio.

![[Pasted image 20251124231019.png]]
![[Pasted image 20251124231411.png]]

- Como me he equivocado y en vez de poner .conf puse .cong pondremos en la linea de comando `mv centro.intranet.cong centro.intranet.conf` y de cambiara el nombre .

![[Pasted image 20251124231912.png]]

- Ponemos `a2ensite centro.intranet.conf` para habilitar el dominio y restablecemos apache para que se guarden los cambios.

![[Pasted image 20251124232201.png]]

- Ahora podremos terminar de configurar wordpress desde otra maquina.  Para ver el doiminio primero debemos modificar el archivo */etc/hosts/*  para que pueda ver la pagina

![[Pasted image 20251125003510.png]]
