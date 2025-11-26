## Analisis del problema

El objetivo es transformar URLs dinámicas (con parámetros ?id=) en URLs amigables (semánticas) para mejorar el SEO y la experiencia de usuario,
además de implementar capas de seguridad básicas contra el robo de ancho de banda (hotlinking) utilizando el módulo mod_rewrite de Apache.

## Solucion propuesta

A continuación, presento un archivo .htaccess consolidado. 
Este fichero integra la reescritura de URLs para la aplicación matemática, la solución al ejercicio de búsqueda y la protección de activos.

<IfModule mod_rewrite.c>
    RewriteEngine On
    RewriteBase /

    # ----------------------------------------------------------------------
    # 1. Protección contra Hotlinking (Robo de imágenes)
    # ----------------------------------------------------------------------
    # Si el referer NO está vacío (es una visita directa)
    RewriteCond %{HTTP_REFERER} !^$
    # Y si el referer NO viene de mi propio dominio (cambiar dominio.com por el tuyo)
    RewriteCond %{HTTP_REFERER} !^http(s)?://(www\.)?midominio\.com [NC]
    # Y no estamos solicitando ya la imagen de "aviso" (para evitar bucle infinito)
    RewriteCond %{REQUEST_URI} !/img/hotlink_aviso\.png [NC]
    # Entonces, redirigir cualquier solicitud de jpg/png/gif a la imagen de aviso
    RewriteRule \.(jpg|jpeg|png|gif)$ /img/hotlink_aviso.png [NC,R=302,L]

    # ----------------------------------------------------------------------
    # 2. Reescritura para Calculadora (Ejemplo 3 del texto)
    # ----------------------------------------------------------------------
    # Convierte: /suma/8/6  ->  operacion.php?op=suma&op1=8&op2=6
    # Explicación Regex:
    #   ^([a-z]+) -> Captura la operación (letras) en variable $1
    #   /([0-9]+) -> Captura primer operando (números) en variable $2
    #   /([0-9]+) -> Captura segundo operando (números) en variable $3
    RewriteRule ^([a-z]+)/([0-9]+)/([0-9]+)$ operacion.php?op=$1&op1=$2&op2=$3 [L,QSA]

    # ----------------------------------------------------------------------
    # 3. Solución al Ejercicio de Búsqueda
    # ----------------------------------------------------------------------
    # Objetivo: http://localhost/buscar/hola.html -> buscar.php?id=hola
    #
    # Nota: Usamos (.+) para capturar 'hola'. El \.html escapa el punto.
    RewriteRule ^buscar/(.+)\.html$ busqueda/buscar.php?id=$1 [L,QSA]

    # ----------------------------------------------------------------------
    # 4. Redirección SEO (Legacy .do a .html - Ejemplo 2)
    # ----------------------------------------------------------------------
    # Si alguien entra con la extensión antigua .do, forzamos un 301 (Permanente)
    # a .html para traspasar la autoridad SEO.
    RewriteRule ^(.+)\.do$ $1.html [R=301,NC,L]

</IfModule>

---

## Pasos en servidor web

- `nano /etc/apache2/sites-available/000-default.conf` $\rightarrow$ Configuramos el **VirtualHost** con `AllowOverride All` para que .htaccees tome el control.

    <img width="629" height="219" alt="image" src="https://github.com/user-attachments/assets/55f562f2-172f-4783-b331-f15300a887fc" />

- Reiniciamos apache con `systemctl restart apache2`.  Ahora crearemos 2 archivos php sencillos para la pagina.

  <img width="794" height="204" alt="image" src="https://github.com/user-attachments/assets/c498ec29-5418-4a59-8bcf-a429595f910c" />
  <img width="794" height="204" alt="image" src="https://github.com/user-attachments/assets/4566eb90-eb85-4a07-aa8a-8ec76db7e982" />
  <img width="796" height="133" alt="image" src="https://github.com/user-attachments/assets/7c18773b-a6cb-4af8-85f0-ad12a2241816" />

- Ahora configuramos el .htaccess

<img width="811" height="398" alt="image" src="https://github.com/user-attachments/assets/a8cb593b-b955-4e32-8b60-d77e6de7fd9a" />


- Probamos en el cliente debian 
