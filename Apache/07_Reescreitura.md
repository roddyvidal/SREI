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
