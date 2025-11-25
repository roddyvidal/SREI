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

<img width="985" height="359" alt="image" src="https://github.com/user-attachments/assets/e50137c9-6391-4f06-8d3f-a9b824e5f0c0" />







