## 1) Apache utilizará el puerto 81 además del 80

- Para que apache utilice el puerto 81 ademas del puerto 80 que usa por defecto tenemos que configurar el archivo ports.conf

<img width="832" height="64" alt="imagen" src="https://github.com/user-attachments/assets/fce19324-65af-4490-bb28-622f5713cacf" />

<img width="801" height="168" alt="imagen" src="https://github.com/user-attachments/assets/3f24667c-3dfd-42da-840a-06556a3f3c0a" />

---

## 2) Añadir el dominio “marisma.intranet” en el fichero “hosts”

-Para añadir el dominio 'marisma.intranet' tenemos que ir a la configuración del virtual host y cambiar el valor del ServerName. En mi caso es roddydom.conf ya que en la practica anterior cambiamos el archivo de configuracion default por el nuestro propio.

<img width="824" height="114" alt="imagen" src="https://github.com/user-attachments/assets/22ac8bf0-11d7-4aef-aa77-24f39b0fa9c5" />

<img width="708" height="357" alt="imagen" src="https://github.com/user-attachments/assets/1c8d46ba-b962-4232-9251-0adb2a9fe626" />

- Vamos al directorio etc el archivo hosts para poner marisma.intranet como dominio

<img width="811" height="162" alt="imagen" src="https://github.com/user-attachments/assets/121eb2b0-a040-48f6-aa96-77cb14db69b8" />
  
- Como ya hemos hecho algunos cambios sustanciales vmaos a restablecer apache para que se apliquen los cambios que hemos hecho y vemos si esta activo para probar en el navegador

- <img width="816" height="261" alt="imagen" src="https://github.com/user-attachments/assets/0eed6cbe-5e6a-4af6-9461-a36283fe359c" />

- Vemos que si vamos al localhost:80 sigue el archivo de configuración del primer ejercicio y en la imagen de abajo con el puerto 81 la pagina principal de apache

<img width="1023" height="207" alt="imagen" src="https://github.com/user-attachments/assets/0e4031b3-0105-44ce-800e-d12322ce6d8f" />

<img width="967" height="311" alt="imagen" src="https://github.com/user-attachments/assets/35b2097b-0c9b-406c-ae49-cbfd41acd312" />

## 3) Cambia la directiva “ServerTokens” para mostrar el nombre del producto.

- Para encontrar donde esta el archvio que necesitamos cambiar pondremos estos comandos y vemos donde se situa el arcivo de configuracion. "sudo grep -RIn "ServerTokens" /etc/apaache2"

<img width="899" height="214" alt="imagen" src="https://github.com/user-attachments/assets/cd6ef379-3590-406c-9a9a-40c3d7e4683b" />

- Para cambiar esta directiva tenemos que ir al archivo security.conf situado en el directorio conf-available

  <img width="829" height="137" alt="imagen" src="https://github.com/user-attachments/assets/87b14630-bdbc-4f19-8198-95a2f9ecde61" />

- Cambiamos el valor de ServerToken OS por 'ServerToken Prod'. Guardamos y reiniciamos apache.

<img width="812" height="320" alt="imagen" src="https://github.com/user-attachments/assets/a23a8905-b309-4dd7-acb3-ee104aa6ddaa" />

<img width="827" height="126" alt="imagen" src="https://github.com/user-attachments/assets/c9cf3f4a-882c-42b8-a961-dc73ff83ef73" />

- Con curl -I `nombredomnio` nos da la cabecera del la pagina y asi podemos comprobar si esta bien configurado

<img width="685" height="156" alt="imagen" src="https://github.com/user-attachments/assets/640c23bf-38ae-4385-abd4-0db36b1ab5ea" />

---

## 4) Comprueba si se visualiza el pie de página en las páginas generadas por Apache (por ejemplo, en las páginas de error). Cambia el valor de la directiva y comprueba que funciona correctamente

- Vamos al archivo que donde cambiamos "ServerTokens" y un poco mas abajo veremos ServerSignature para cambiar la informacion del servidor en caso de error en la página.

<img width="910" height="55" alt="imagen" src="https://github.com/user-attachments/assets/a86f6ad5-da2f-49d6-b13a-7fdc17be4b91" />

<img width="829" height="341" alt="imagen" src="https://github.com/user-attachments/assets/3901eae1-5077-4e08-923d-5a5ebf7cdabb" />

- Reiniciamos el servicio de apache y comprobamos si funciona

<img width="919" height="307" alt="imagen" src="https://github.com/user-attachments/assets/3c06484e-71b5-425d-9eed-6912c523c7b6" />

---

## 5) Crea un directorio “prueba” y otro directorio “prueba2”. Incluye un par de páginas en cada una de ellas.

- Creamos los dos directorios de prueba dentro de /var/www

<img width="808" height="194" alt="imagen" src="https://github.com/user-attachments/assets/2f67cf07-2208-401c-972a-56dd60bd9a43" />

- Una vez creados tenemos que editar los archivos para crear una pagina simple.

<img width="766" height="102" alt="imagen" src="https://github.com/user-attachments/assets/796a4728-8ed3-4f1d-83a4-ef418d9714ea" />

<img width="842" height="141" alt="imagen" src="https://github.com/user-attachments/assets/9d8541fd-09df-49e8-a7fd-0eefe2b1c738" />

- Cambiamos el prpietario del directorio para que tengamos permisos de esctritura.

<img width="826" height="77" alt="imagen" src="https://github.com/user-attachments/assets/ab12f767-b7b2-4db6-8395-6e590d4c5f26" />


- Dentro de index.html creamos la pagina que se mostrara.

<img width="667" height="183" alt="imagen" src="https://github.com/user-attachments/assets/a162099d-0e6d-42ae-8ce9-cc18cc527d8c" />

- Salimos del directorio prueba y nos vamos al direcctroio prueba2 y cambiamos de propietario el directorio para que tengmaos permisos de escritura

<img width="813" height="162" alt="imagen" src="https://github.com/user-attachments/assets/dfb3d8d6-46db-46d8-a9ec-4f7114998d41" />

- Creamos el archivo index.html y creamos la seguda pagina.

<img width="829" height="177" alt="imagen" src="https://github.com/user-attachments/assets/89b753d5-35b4-459a-b1af-29f1370e78ef" />

- Le creamos virtualhost para entrar por su nombre. Entramos en el archivo de configracion de los virtualhosts.

<img width="815" height="109" alt="imagen" src="https://github.com/user-attachments/assets/d33ce621-8b2f-4680-a24e-4d195656d680" />

<img width="803" height="366" alt="imagen" src="https://github.com/user-attachments/assets/8c1e076d-4b63-4866-8b61-d189d4904f01" />

- Reiniciamos apache2

<img width="845" height="67" alt="imagen" src="https://github.com/user-attachments/assets/4a61a265-dfb5-44fa-9781-954bf5598e4a" />

- Añadirmeos el dominio al etc hosts

<img width="707" height="86" alt="imagen" src="https://github.com/user-attachments/assets/44aa300e-64af-4a09-b72d-b173995e073b" />

<img width="807" height="171" alt="imagen" src="https://github.com/user-attachments/assets/2e2fb73f-3930-4552-ad3e-308b1b0332ce" />

- Entramos al navegador y porbamos si funcionan las paginas.

<img width="806" height="213" alt="imagen" src="https://github.com/user-attachments/assets/054eab8a-3f77-4248-acb3-1664f3b3ebec" />

<img width="847" height="241" alt="imagen" src="https://github.com/user-attachments/assets/77f43ff7-c2b9-41ca-b2a7-a2e32f84b275" />

---

## 6) Redirecciona el contenido de la carpeta “prueba” hacia “prueba2”
 
 - La opcion mas facil para redirigir es desde el VirtualHost. Entramos al archivos de configuracion.

<img width="711" height="223" alt="imagen" src="https://github.com/user-attachments/assets/8c8b66f0-afef-4cc6-b5b2-980b07af1b5c" />

- Ponemos la url de prueba.intranet y veremos como nos redirecciona a prueba2

<img width="1006" height="225" alt="imagen" src="https://github.com/user-attachments/assets/18cb2dc2-d12f-44a3-b125-53da33aa9703" />

<img width="911" height="222" alt="imagen" src="https://github.com/user-attachments/assets/871acf5f-5606-4e75-a309-29e6e2336392" />







  


