
Para empezar debemos modificar el archivo */etc/hosts* con la ip de contenedor  y poner los dos dominios que nos piden (**centro.intranet** y **departamentos.centro.intranet**)

- Hacemos un ifconfig para ver la ip que debemos poner en el archivo hosts.

<img width="761" height="322" alt="image" src="https://github.com/user-attachments/assets/fa5c92c3-905a-4d23-a8f6-147d3a79ea51" />


- Modificamos el archivo */etc/hosts* con `nano /etc/hosts`.

<img width="770" height="269" alt="image" src="https://github.com/user-attachments/assets/526f1888-aa24-427b-82a9-746ed4a178e7" />


- Una vez añadidos los dominios vamos a asegurarnos que los módulos necesarios están activos.

<img width="800" height="422" alt="image" src="https://github.com/user-attachments/assets/6c8c9919-d702-4566-b9d1-8dffdd6ad8b8" />

- Crearemos una base de datos para el wordpress con `mysql -u root -p`
	Una vez dentro de la base de datos crearemos la base de datos especifica para `Wordpress` con el usuario que la manejará.
	Le damos todos los privilegios sobre la base de datos y salimos.
	
	<img width="793" height="331" alt="image" src="https://github.com/user-attachments/assets/f0f1da3b-f8d9-4507-b2c7-081703fa9618" />



