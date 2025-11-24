
Para empezar debemos modificar el archivo */etc/hosts* con la ip de contenedor  y poner los dos dominios que nos piden (**centro.intranet** y **departamentos.centro.intranet**)

- Hacemos un ifconfig para ver la ip que debemos poner en el archivo hosts.

![[Pasted image 20251124223545.png]]

- Modificamos el archivo */etc/hosts* con `nano /etc/hosts`.

![[Pasted image 20251124224030.png]]

- Una vez añadidos los dominios vamos a asegurarnos que los módulos necesarios están activos.

![[Pasted image 20251124224304.png]]

- Crearemos una base de datos para el wordpress con `mysql -u root -p`
	Una vez dentro de la base de datos crearemos la base de datos especifica para `Wordpress` con el usuario que la manejará.
	Le damos todos los privilegios sobre la base de datos y salimos.
	
	![[Pasted image 20251124225407.png]]


