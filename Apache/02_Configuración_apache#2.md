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

--- 

## 7) Es posible redireccionar tan solo una página en lugar de toda la carpeta. Pruébalo.

- Si es posible, para ello nos redijimos a donde tenemos configurado los VirtualHosts.
<img width="834" height="119" alt="imagen" src="https://github.com/user-attachments/assets/c0c1f88d-f4f9-4513-b79b-2651ebca9f9d" />

- Despues pondremos en el primero VirtualHost un redirect para que vaya direcatamente a la pagina de prueba2. Le indicamos primero la pagina que queremos que omita y depsues la pagina que queremos que se muestre.

<img width="783" height="461" alt="imagen" src="https://github.com/user-attachments/assets/2f44e233-2db2-4227-bb0e-79a78923a55d" />

- Probamos en el navegador con la url del primer sitio web y veremos que se redirige.

<img width="951" height="334" alt="imagen" src="https://github.com/user-attachments/assets/150e5046-ba62-41e4-bdb1-ffa6458509a0" />

<img width="952" height="715" alt="imagen" src="https://github.com/user-attachments/assets/6b2f6946-a77e-4e24-a8f3-97567dbb03b3" />

---

## 8) Usa la directiva userdir

- El primer paso para ello es activar el modulo userdir.

<img width="803" height="185" alt="imagen" src="https://github.com/user-attachments/assets/95fdbf8d-7e36-490e-8b7c-e4b8a8a7d945" />

-Crearemos un directorio public_html en nuestro usuario.

<img width="739" height="156" alt="imagen" src="https://github.com/user-attachments/assets/ff973ebb-a08b-44c5-8b58-cb2d06a7a79b" />

- Crearemos algunos ficheros de prueba

<img width="816" height="578" alt="imagen" src="https://github.com/user-attachments/assets/af133d19-9d90-407c-87b9-450ac288591e" />

- Entamos a la ruta y nos saldrá la pagina que hicimos de nuestro Usuario.

<img width="753" height="170" alt="imagen" src="https://github.com/user-attachments/assets/7d8241bb-296a-497c-8f75-dec6daa47f7a" />

---

## 9) Usa la directiva alias para redireccionar a una carpeta dentro del directorio de usuario.


-Para usar la directiva alias primero crearemos otro directorio dentro de public_html para que coja el archivo desde ahi la redirección.

<img width="733" height="105" alt="imagen" src="https://github.com/user-attachments/assets/a70e73a0-8444-4e24-b29f-dc3dec8d164b" />

- Ahora configuraremos el alias dentro de userdif.conf

<img width="767" height="91" alt="imagen" src="https://github.com/user-attachments/assets/ca19caac-9a73-4c70-b9f2-c5b0fad4d262" />

<img width="666" height="318" alt="imagen" src="https://github.com/user-attachments/assets/77ef7a7c-21a9-4909-879f-dda669073325" />

- Recatgamos el servicio de apache2.

  <img width="736" height="299" alt="imagen" src="https://github.com/user-attachments/assets/98485238-7464-4a2f-ad88-755c6a636cfe" />

- Probamos el alias.

<img width="697" height="153" alt="imagen" src="https://github.com/user-attachments/assets/1edc695e-c9a5-46ec-9ba3-b19c614cc5a2" />

---

## 10) ¿Para qué sirve la directiva Options y dónde aparece. Comprueba si apache indexa los directorios. Si es así, ¿cómo lo desactivamos?

- Options controla qué características están habilitadas dentro de un contexto <Directory>, <Location>, <VirtualHost> o en un .htaccess. Algunos valores habituales:

- Indexes → permite que Apache genere listados de directorio (directory listing) cuando no hay un index.html/index.php.

- FollowSymLinks → permite seguir enlaces simbólicos.

- SymLinksIfOwnerMatch → like FollowSymLinks pero con restricción de propietario.

- Includes → permite Server Side Includes (SSI).

- ExecCGI → permite ejecutar CGI.

 -None → desactiva todas las opciones.

- Para comprobar si Apache esta indexando solo hacemos un curl a algunas de las paginas que tenemos.

<img width="764" height="228" alt="imagen" src="https://github.com/user-attachments/assets/e91eb897-b177-4621-bd21-a2f6ace217d8" />

- Como podemos ver ahora mismo apache no esta indexando.

<img width="764" height="228" alt="imagen" src="https://github.com/user-attachments/assets/148fc82a-d161-4fa4-904e-1150f9ab8514" />











  


