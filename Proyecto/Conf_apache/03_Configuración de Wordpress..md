# Instalacion y configuracion de wordpress
Vamos a configurar el primer **VirtualHost**, pero para ello tenemos que instalar Wordpress.
Iremos al directorio */var/www* y lo descargaremos aqui para tenerlo todo mas organizado.

1. Ponemos en la linea de comando `wget https://wordpress.org/latest.tar.gz`
2. Descomprimimos con `tar -xzvf latest.tar.gz`

<img width="796" height="74" alt="image" src="https://github.com/user-attachments/assets/cdc06d6e-39a9-4748-8d55-66b54f8c8974" />


- Movemos wordpress a centro.intranet.
  
<img width="823" height="64" alt="image" src="https://github.com/user-attachments/assets/8d98096f-7fdb-4724-91a7-4949df7b261b" />

- Le cambiaremos los permisos y propietario con  `chmod` y `chown`
  
<img width="792" height="66" alt="image" src="https://github.com/user-attachments/assets/b092d2d6-db71-485e-959c-131c03c5f4a3" />


- Ahora configuraremos el archivo el virtual hosts para este dominio.

<img width="777" height="393" alt="image" src="https://github.com/user-attachments/assets/f87f61a0-cdda-4e23-89fd-be467696e00b" />


- Como me he equivocado y en vez de poner .conf puse .cong pondremos en la linea de comando `mv centro.intranet.cong centro.intranet.conf` y de cambiara el nombre .

<img width="799" height="175" alt="image" src="https://github.com/user-attachments/assets/bcc82c52-92a6-450c-9d84-2f3e1e35dbc0" />


- Ponemos `a2ensite centro.intranet.conf` para habilitar el dominio y restablecemos apache para que se guarden los cambios.

<img width="781" height="133" alt="image" src="https://github.com/user-attachments/assets/947d3cc8-f878-466b-8abe-a69ea6341d72" />


- Ahora podremos terminar de configurar wordpress desde otra maquina.  Para ver el doiminio primero debemos modificar el archivo */etc/hosts/*  para que pueda ver la pagina

<img width="1282" height="773" alt="image" src="https://github.com/user-attachments/assets/ddbc300b-14f4-4ae5-8c5c-b9a39005f12c" />

