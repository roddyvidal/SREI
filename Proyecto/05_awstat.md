## awstat

Vamos a instalar awstat con `apt install awstas`. Una vez instalado copiaremos el archivo `awstats.conf` en un nuevo directorio del dominio principal que tenemos.

  <img width="1092" height="150" alt="image" src="https://github.com/user-attachments/assets/2b4e0d0c-d03e-45a7-bb3d-03485e25c6d8" />

- Modificaremos `site-domain` y pondrmeos el dominio sobre el que queremos que se aplique y nos aseguramos que el `Log file` apunte a la dirección correcta.

  <img width="934" height="236" alt="image" src="https://github.com/user-attachments/assets/ee492aa7-0ff9-4a22-83a7-f3ca85e49efa" />


  <img width="751" height="170" alt="image" src="https://github.com/user-attachments/assets/23535a1d-7e4f-4415-8e20-8c082d5f47d1" />

- Activamos `CGI` y la conf de `awstats` y recargamos apache.

    <img width="744" height="144" alt="image" src="https://github.com/user-attachments/assets/b05248e5-2b20-4b2c-a7b3-6d16a6d37308" />

- Ponemos esta ruta en el navegador de nuestro host para que aparezca `awstats` $\rightarrow$

    <img width="1283" height="806" alt="image" src="https://github.com/user-attachments/assets/7622ef12-3218-4e67-b755-65edc6a33577" />


