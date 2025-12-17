## Configuración de EC2 para la base de datos.

- Ejecutamos este comando para que nuestro Linux se pueda comunicar con la base de datos "Remota"
  
<img width="1098" height="371" alt="image" src="https://github.com/user-attachments/assets/5224b36a-31dc-4af0-bd92-6561a284a422" />

- Ahora buscamos RDS en AWS y crearemos una base de datos. Elegiremos MySQL como motor.

  <img width="1919" height="708" alt="image" src="https://github.com/user-attachments/assets/80d399c6-097b-44ee-9000-0bb1402ce4b2" />

- Le ponemos un nombre identificativo y una contraseña.

  <img width="1571" height="602" alt="image" src="https://github.com/user-attachments/assets/486c67a0-268a-4d2d-8004-6430921df02f" />

- Configuración de la instancia.

  <img width="1537" height="378" alt="image" src="https://github.com/user-attachments/assets/5810ed00-9451-4333-a895-7a153c3b8bd1" />

- Almacenamiento.

  <img width="1478" height="310" alt="image" src="https://github.com/user-attachments/assets/87492d10-d206-4337-adf0-0c55b08536d8" />

- En conectividad elegiremos "Conectar a EC" que ya tenemos creada y elegimos la EC2 y lo demas por defecto

  <img width="1465" height="684" alt="image" src="https://github.com/user-attachments/assets/3a07a58e-8cc2-4c70-b870-1ea10d1d5778" />

  - En coniguracion adicional podrmeos el nombre inicial de "bdWordpress" y y apodremos crear la base de datos

  <img width="1534" height="387" alt="image" src="https://github.com/user-attachments/assets/6e007274-40d2-435e-a806-bc63e76ef092" />

- Una vez creada la base de datos pinchamos en ella y nos llevara a esta ventana donde copiaremos el endpoint e iremos a nuestro debian.

  <img width="1918" height="860" alt="image" src="https://github.com/user-attachments/assets/fe70fb10-6281-46db-a12c-b8380d4fcf57" />

- Entramos con este comando "mysql -h bdwordpress.cu8wnfuwxkyy.us-east-1.rds.amazonaws.com -u admin -p --skip-ssl". Pongo Skip ssl porque me da problemas

  <img width="1107" height="271" alt="image" src="https://github.com/user-attachments/assets/e15d00ec-4f70-4146-adbc-597684d30feb" />

- Creamos el usuario y le damos permisos.

  <img width="899" height="293" alt="image" src="https://github.com/user-attachments/assets/7821943c-17f8-4c71-a9f2-f8fbceb33d32" />









  
