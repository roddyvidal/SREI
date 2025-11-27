## Como crear un SSL autofirmado.

Para crear un SSL autofirmado primero tenemos que poner este comando `sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/apache-selfsigned.key -out /etc/ssl/certs/apache-selfsigned.crt`. 
Nos saldra un output como el de la imagen el cual rellenaremos.

  <img width="734" height="254" alt="image" src="https://github.com/user-attachments/assets/1fb83935-674d-4aad-9e4f-1885e1a43531" /> 

- En el archvivo de configuracion de ssl ponemos este modulo.

  <img width="700" height="116" alt="image" src="https://github.com/user-attachments/assets/7545db43-867b-459f-8221-99aa72722a50" />

  <img width="978" height="232" alt="image" src="https://github.com/user-attachments/assets/217558b6-9c97-4356-ac64-ae48478eefc8" />


Ahora tenemos que configurar el **VirtualHost** porque el tráfico de la pagina ya no ira por el puerto 80 si no por el puerto 443.
  
  <img width="896" height="156" alt="image" src="https://github.com/user-attachments/assets/e2dc41e4-5f14-4606-8b13-131c821183ba" />

Añadimos estos apartados para que funione el SSL.

  <img width="888" height="323" alt="image" src="https://github.com/user-attachments/assets/b8db2e05-b29d-46b6-85d1-6a460358fc6c" />

- Habilitamos el virtual host que acabamos de configurar y el modulo ssl de apache. 

  <img width="889" height="270" alt="image" src="https://github.com/user-attachments/assets/ea0eff33-4c6a-4755-ad64-25dc011d2cd4" />


  
