## La arquitectura Web es un modelo compuesto de tres capas, ¿cuáles son y cuál es  la función de cada una de ellas?
- La arquitectura web se divide en 3 capas lógicas: **La capa de presentación** que es capa de interfaz y capa de usuario.
- **Capa de aplicación** contiene la logica y el procesamiento de datos.
- **Capa de almacenaiento** donde se guardan y gestionan los datos persistentes, como las bases de daatos.

---

## Una plataforma web es el entorno de desarrollo de software empleado para  diseñar y ejecutar un sitio web; destacan dos plataformas web, LAMP y WISA. Explica en qué consiste cada una de ellas.

- **LAMP** Es una pila de sofware de código abierto que se usan para desarrollar y alojar aplicaciones web. Las letras de su nombre se refiere a las tecnologías que se usan **L**inux, **A**pache, **M**ySQL, **P**HP. Con estas tecnologias se permiter crear sitios web dinámicos y estáticos.

- **WISA** Es lo mismo que LAMP pero con diferentes tecnologías que estan desarroladas por Microsoft. **W**indows, **I**nternet information services, **S**QL server, **A**SP. 

---

## Instalación de apache en Debian

- Después de instalar el sistema operativo hacemos sudo apt update && upgrade, no solo para instalar apache si no como ritual cada vez que instales una distribución de linux.
- Para instalar apache empezamos con 

 <img width="777" height="146" alt="image" src="https://github.com/user-attachments/assets/26336140-b146-4637-82b0-283b6be74e4d" />

 <img width="713" height="168" alt="image" src="https://github.com/user-attachments/assets/a2a98eb8-3c13-4823-85a4-7bfbd4a6412c" />
 

- Una vez terminada la instalación de apache2 tendremos que configurar el cortafuegos para permitir el tráfico HTTP. Para ello pondremos esto comandos.

![alt text](image-1.png)

- Para solo permitir el puerto 80 podremos estos comandos.

![alt text](image-3.png)

- Ponemos nuestra IP en el navegador por el puerto 80 y si nos sale la página principal de apache es que lo tenemos todo instalado.

![alt text](image-4.png)

---

## Instalación MySQL en ubuntu.

- Una vez instalado apache solo nos queda instalar Mysql y php. Seguiremos con Mysql en este paso. Pondremos este comando en la terminal para instalar MySQL.

 <img width="745" height="227" alt="image" src="https://github.com/user-attachments/assets/b85f2c0f-0ef2-411c-b356-68cb649c5255" />


- Ahora nos meteremos en SQL y cambiaremos la contraseña del root de mysql. Entramos a MySQL con este comando.

 <img width="789" height="284" alt="image" src="https://github.com/user-attachments/assets/147ecf66-e89b-4f08-9edb-fd6da00848f2" />


- Con el comando cambiaremos la contraseña para entrar en MySQL.

 <img width="458" height="104" alt="image" src="https://github.com/user-attachments/assets/ed963596-9bbb-474f-ba0a-144b894eca4a" />

---

## Instalación PHP

- Para instalar el PHP qpondremos este comando.

 <img width="741" height="445" alt="image" src="https://github.com/user-attachments/assets/9937c8e2-cf31-4d1e-a8e9-4767634f9e1b" />


- Y ya tendriamos PHP instalado

<img width="644" height="178" alt="image" src="https://github.com/user-attachments/assets/1481edc3-324d-4e0d-b314-5ecea5ee798d" />


## Cambiar indices de directorios en apache.
 - Creamos un directorio en `/var/www/` y cambiamos de propietario 

   <img width="754" height="140" alt="image" src="https://github.com/user-attachments/assets/75ecb5e5-0d8c-4222-bbe9-8499e69711b5" />


 - Tenemos que reiniciar Apache2 para que apliquen los cambios.

  <img width="735" height="437" alt="image" src="https://github.com/user-attachments/assets/67fa7f2a-9a57-4a43-84c6-89992acec8c3" />

 
 ---

 ## Crear un virtual host.

 - A continuación vamos a cabmiar un archivo de configuración de site-available con estos comandos.

 <img width="1249" height="209" alt="image" src="https://github.com/user-attachments/assets/b84bf68d-66bf-4a31-80cb-48ec3259df5a" />


 ![alt text](image-19.png)

 - Ahora usaremos a2ensite para habilitar el nuevo host con este comando.

 <img width="622" height="195" alt="image" src="https://github.com/user-attachments/assets/e89fbb29-fd11-4ee1-b859-aed316a66ac6" />

 <img width="890" height="632" alt="image" src="https://github.com/user-attachments/assets/19cb2086-59e5-4026-8d20-27cb4e93e709" />


- Antes de hacer reinicio del servicio de apache vamos a deshabiliatr el sitio predeterminado con este comando. Hacemos reload al servicio de apache2

 <img width="1169" height="279" alt="image" src="https://github.com/user-attachments/assets/99354c8c-884f-45fc-98b3-369da52d7ee8" />

- Y ahora configuraremos el archivo de mi dominio ya que esta vacio

 <img width="1169" height="112" alt="image" src="https://github.com/user-attachments/assets/3582b396-a12a-42ac-8888-c72b9ac7f11e" />

- Y podemos ver que hemos hecho las configuraciones bien.

 <img width="1145" height="236" alt="image" src="https://github.com/user-attachments/assets/5ca6575e-a4f8-46d2-b977-37b71be1e4e2" />


