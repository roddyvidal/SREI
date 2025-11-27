## 1. Crear la estructura del directorio

- Como primer paso vamos a crear la estructura de directorios de nuestros sitios web. El directorio padre sera `7var/www/` 
  
  <img width="634" height="108" alt="image" src="https://github.com/user-attachments/assets/704514fd-6f0a-4a55-9fa7-43485103c04b" />

- Le otorgamos los permisos **755** con `chmod`.

  <img width="779" height="250" alt="image" src="https://github.com/user-attachments/assets/1831f935-4c29-4f84-b3c8-397dc7b946c9" />

- Ahora vamos crear dentro de los directorios páginas simples a visualizar en nuestro cliente debian.

  <img width="688" height="219" alt="image" src="https://github.com/user-attachments/assets/ee4f8d49-d098-4c95-8c59-af0b2dcdf1ba" />

- Este mismo archivo podemos copiarlo en `/var/www/prueba.com/public_html/index.html` cambiando el nombre de ejemplo por prueba.

  <img width="1008" height="132" alt="image" src="https://github.com/user-attachments/assets/4e65efa0-3102-4b2d-9320-bd38bf71d947" />

  <img width="1029" height="316" alt="image" src="https://github.com/user-attachments/assets/1f471691-bdec-48e0-be10-9b354a87e0cb" />

- Una vez creados las páginas vamos con su archivo VirtualHost, cogeremos el VirtualHost de `000-default`.

  <img width="1081" height="110" alt="image" src="https://github.com/user-attachments/assets/6d5c583d-595a-4b6f-bf72-8e9f9a6c7dcd" />

- Le ponemos esta configuración.

  <img width="636" height="246" alt="image" src="https://github.com/user-attachments/assets/dd87dff9-3f05-4c28-ae95-c0102b94ce3f" />

- Copiamos `ejemplo.com.conf` al directorio de `/etc/apache2/prueba.com`

  <img width="1069" height="195" alt="image" src="https://github.com/user-attachments/assets/751a3c5d-dfc2-402b-aa55-42ee7a2bc9bd" />

- Con `nano` lo editamos.

  <img width="700" height="265" alt="image" src="https://github.com/user-attachments/assets/606ccf28-f85f-4738-bf06-f7554bfd7345" />

- Habilitamos los dos sitios web.

  <img width="685" height="218" alt="image" src="https://github.com/user-attachments/assets/ee96365a-b821-4051-a5b8-2ee79b2a8caf" />

- Restablecemos apache.

  <img width="481" height="97" alt="image" src="https://github.com/user-attachments/assets/87ce4de4-8c18-49e1-8e98-1daa845e29c2" />

- Editamos el archivo hosts de nuestro cliente para que pueda ver la pagina

  <img width="746" height="240" alt="image" src="https://github.com/user-attachments/assets/af16f1b4-7be6-4931-a2b8-fc9bfcdde155" />

- Y podemos ver que las dos paginas las podemos visualizar.

  <img width="1126" height="307" alt="image" src="https://github.com/user-attachments/assets/0fe0f3d1-7382-4616-be45-1c0507972c2a" />

  <img width="1125" height="297" alt="image" src="https://github.com/user-attachments/assets/a826ceee-5045-4939-8019-ab75fd001342" />







