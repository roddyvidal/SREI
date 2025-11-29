## Instalación y configuración de nginx como segundo servidor

Apache y Nginx no pueden escuchar en el mismo puerto e IP simultáneamente. Apache ya tiene el 80. Nginx usará el 8080. Además, Nginx no usa mod_php, necesita PHP-FPM.

- Sabiendo esto proseguimos a instalar nginx y phpfmf

  <img width="859" height="127" alt="image" src="https://github.com/user-attachments/assets/12b17496-6454-4fbb-b444-11ec1399fac3" />

-  Crearemos el dirctorio servidor2 con `mkdir -p /var/www/servidor2`. Copiamos el archivo de configuracion default a `servidor2` y pondemos esta configuración

  <img width="961" height="106" alt="image" src="https://github.com/user-attachments/assets/0ff3fe3e-0aaa-4700-90f9-647f932b940c" />

  <img width="895" height="284" alt="image" src="https://github.com/user-attachments/assets/65d35074-b521-442d-83ed-b593efcdeabf" />

- Dentro del directorio servidor2 instalamos `phpmyadmin`

  <img width="940" height="192" alt="image" src="https://github.com/user-attachments/assets/c2109462-981f-4321-9a47-0dc8f81a9c16" />

- Pero para que funcione debemos poner este comando para crear un enlace simbolico y se ejecute phpmyadmin cuando entremos en el navegador

  <img width="1021" height="82" alt="image" src="https://github.com/user-attachments/assets/ab791e9c-4208-4cb2-a1e8-5d27b6eeab7a" />


- Damos "yes" en esta opcion

  <img width="1097" height="425" alt="image" src="https://github.com/user-attachments/assets/a02a9b6b-5855-46e3-ad7b-ce7a529e7570" />

- Ponemos la contraseña del root de `MariaDB`

  <img width="1093" height="420" alt="image" src="https://github.com/user-attachments/assets/b81cf389-a5d1-451f-b409-d7ade447f5e3" />

- En esta parte daremos al boton de tabular y ok para saltar esta opcion ya que nginx no sale.

  <img width="1100" height="431" alt="image" src="https://github.com/user-attachments/assets/49e0062a-50c3-45b7-bf93-1f66de689354" />

- Pondremos estos comandos para terminar de configurar nginx

`ln -s /etc/nginx/sites-available/servidor2 /etc/nginx/sites-enabled/
rm /etc/nginx/sites-enabled/default # Opcional, para evitar conflictos
systemctl restart nginx
systemctl restart php8.2-fpm`

## Prueba en el host

- Ponemos el dominio nuevo en `/etc/hosts`

  <img width="920" height="455" alt="image" src="https://github.com/user-attachments/assets/ca2c325b-9f38-4778-835f-5a67d15f1a86" />

- Y al probar la url vemos que nos sale login de phpmyadmin

  <img width="1285" height="791" alt="image" src="https://github.com/user-attachments/assets/491f8bea-352d-4fa7-835c-5776e216bfe8" />


  

