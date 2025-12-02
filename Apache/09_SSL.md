# SSL Autofirmado vs SSL con Let´s encrypt

## 1. Como crear un SSL autofirmado.

Para crear un SSL autofirmado primero tenemos que poner este comando `sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt`. 
Nos saldra un output como el de la imagen el cual rellenaremos.

  <img width="734" height="254" alt="image" src="https://github.com/user-attachments/assets/1fb83935-674d-4aad-9e4f-1885e1a43531" /> 

- En el archvivo de configuracion de ssl ponemos este modulo.

  <img width="700" height="116" alt="image" src="https://github.com/user-attachments/assets/7545db43-867b-459f-8221-99aa72722a50" />

  <img width="978" height="232" alt="image" src="https://github.com/user-attachments/assets/217558b6-9c97-4356-ac64-ae48478eefc8" />


Ahora tenemos que configurar el **VirtualHost** porque el tráfico de la pagina ya no ira por el puerto 80 si no por el puerto 443.
  
  <img width="993" height="295" alt="image" src="https://github.com/user-attachments/assets/19ee69c0-060b-4e05-9230-6563fc3192df" />


Añadimos estos apartados para que funione el SSL.

  <img width="888" height="323" alt="image" src="https://github.com/user-attachments/assets/b8db2e05-b29d-46b6-85d1-6a460358fc6c" />

- Habilitamos el virtual host que acabamos de configurar y el modulo ssl de apache. 

  <img width="570" height="181" alt="image" src="https://github.com/user-attachments/assets/4131396c-fea0-43c4-9b96-35dbb61f5335" />

- Para que apache pueda redireccionar el tráfico `HTTP` hacia `HTTPS` tenemos que activar el Rewrite.

  <img width="603" height="180" alt="image" src="https://github.com/user-attachments/assets/09c0331e-a66c-48c2-8aca-b6cdac543f85" />

- Como podemos ver la pagina no es segura porque google detecta que es un SSL autofirmado.

  <img width="1918" height="1045" alt="image" src="https://github.com/user-attachments/assets/c7e4a163-015b-41f2-b3d8-9480da151c64" />


## 2. SSL con Let´s Encrypt.









  
