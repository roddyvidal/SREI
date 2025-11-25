
## ¿Qué es WSGI?

**WSGI** es una interfaz que actua como puente entre el servidor web y la aplicación (escrita en python), permitiendo que ambos se intercambien solicitudes y respuestas de manera eficiente.
Necesitamos el módulo que conecta **Apache** con **Python** (`mod_sgi`) y la herraminenta para crear entornos virtuales aislados.

Para instalar el módulo **WSGI** necesitamos bajar una libreria de apache y los entornos virtuales de python, para ello usarmeos el siguiente comando. 
`apt-get install libapache2-mod-wsgi-py3 python3-venv git -y`

  <img width="792" height="66" alt="image" src="https://github.com/user-attachments/assets/ca5a32ef-e8dd-42ed-b672-bd26afc4dd01" />

- Una vez instalado vamos a crear un directorio donde crearemos el entorno virtual.

  <img width="851" height="102" alt="image" src="https://github.com/user-attachments/assets/3166e8a7-bd03-4615-86ca-0184bd5a2f24" />

- Ahora en el entorno virtual vamos a instalar flask, un framework web que hara que nuestra aplicación en python se haga visible en la web, ya que la tenemos programada para que se ejecute en consola.
1. `source venv/bin/activate` $\rightarrow$ Activamos el entorno virtual (venv).
2. `pip install flask` $\rightarrow$ Instalamos flask
3. `deactivate` $\rightarrow$ Salimos del vevnv

  <img width="985" height="359" alt="image" src="https://github.com/user-attachments/assets/e50137c9-6391-4f06-8d3f-a9b824e5f0c0" />

---

## Aplicación de python que voy a usar.

Para este paso voy a reutilizar código que tengo del modulo de python, solo necesitarmos clonar nuetsro repositorio de github donde tenemos la aplicación y usar el código

- Dentro de el directorio haremos un `git clone`. Previamente he creado uan rama solo con el archivo que necesito para solo bajar este archivo. [main.py](https://github.com/1dd0Rv/OPT_25_26/tree/apache.py#)

  <img width="1053" height="163" alt="image" src="https://github.com/user-attachments/assets/bb8fe529-8522-4feb-983d-f2131d3177cd" />

- Movemos el archivo del repositorio clonado al directorio `departamentos`

  <img width="1008" height="128" alt="image" src="https://github.com/user-attachments/assets/d06aa281-6b10-455b-8e08-86cade6337de" />

- Con **main.py** en `**/departamentos` vamos a configurar el archvio **WSGI** para que apache sepa como usar python.
  Antes de configurar el archivo vamos a ver que configuracion tenemos en el `venv` para no equivocarnos en la ruta que vamos a poner en el archivo app.wsgi. Ejecutamos el comando `ls /var/www/departamentos/venv/lib/` y
  vemos que tenemos python3.11

  <img width="587" height="94" alt="image" src="https://github.com/user-attachments/assets/8d5f21af-de09-43fc-886a-66952442af04" />

- Ahora creamos el archivo **app.wsgi** con `nano app.wsgi` dentro del directorio `departamentos ` y ponemos la siguiente configuración para el archivo.

  <img width="907" height="200" alt="image" src="https://github.com/user-attachments/assets/65020a40-aead-4de3-a514-056be41fe422" />

--- 

## Configuración de VirtualHost

- Vamos a configurar el `VirtualHost` para que lo que acabamos de montar con python se pueda ver. Accedemos al archivo .conf con el comando `nano /etc/apache2/sites-available/departamentos.conf`

  <img width="930" height="321" alt="image" src="https://github.com/user-attachments/assets/133a4dd8-1f97-4bba-b202-afb09d350dba" />

- Ahora solo queda asignar permisos y activar el sitio web
  1. Damos propiedad al usuario de apache `www-data`
  2. Activamos `departamentos.conf`
  3. Recargamos apache

  <img width="923" height="280" alt="image" src="https://github.com/user-attachments/assets/e1839ad3-84db-46f2-81fa-1353e1103407" />

## Comprobación en un maquina cliente.

- Miramos el archivo `/etc/hosts` para comprobar que nuestra máqiona cliente podrá ver la pagina que hemos creado poniendo el "dominio del VirtualHost"

  <img width="737" height="489" alt="image" src="https://github.com/user-attachments/assets/30236312-d8f7-43ad-92cf-96683655685a" />

- Ponemos la URL que configuramos en el `VirtualHost` en nuestro server y nos saldrá la aplicación de python que teniamos configurada.

  <img width="1276" height="684" alt="image" src="https://github.com/user-attachments/assets/3ff79914-16bc-4d4c-b9f7-c5c4d0275b3e" />



















