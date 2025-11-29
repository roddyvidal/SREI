#  Despliegue de Infraestructura Web: Intranet Corporativa

![Apache](https://img.shields.io/badge/Server-Apache-red)
![Nginx](https://img.shields.io/badge/Server-Nginx-green)
![Python](https://img.shields.io/badge/Python-Flask%20%7C%20WSGI-blue)
![PHP](https://img.shields.io/badge/PHP-8.2-purple)
![LXC](https://img.shields.io/badge/Virtualization-LXC-orange)

Este repositorio documenta el diseño, implementación y configuración de un servidor web híbrido para la gestión de servicios internos de un instituto. El proyecto abarca desde la virtualización ligera hasta el despliegue de aplicaciones heterogéneas (PHP/WordPress y Python/Flask).

## Tabla de Contenidos
1. [Arquitectura del Proyecto](#-arquitectura-del-proyecto)
2. [Servicios Implementados](#-servicios-implementados)
3. [Estructura de la Documentación](#-estructura-de-la-documentación)
4. [Requisitos Previos](#-requisitos-previos)
5. [Instalación y Despliegue](#-instalación-y-despliegue)

---

## Arquitectura del Proyecto

Se ha optado por una virtualización basada en contenedores **LXC (Linux Containers)** sobre Proxmox, utilizando una imagen **Debian 12 (Bookworm) con stack LAMP** pre-optimizado.

### ¿Por qué LXC?
A diferencia de una máquina virtual tradicional, el contenedor LXC comparte el kernel del host, lo que permite un despliegue con **overhead mínimo** de RAM y CPU, ideal para entornos de producción.

### Diagrama de Red y Puertos
La infraestructura sirve múltiples dominios mediante **Virtual Hosts** y Proxy Inverso, distribuidos en dos servidores web concurrentes:

| Dominio (ServerName) | Puerto | Servidor Web | Tecnología/App |
| :--- | :---: | :--- | :--- |
| `centro.intranet` | 80 | **Apache** | WordPress (PHP) |
| `departamentos.centro.intranet` | 80 | **Apache** | Python (Flask + WSGI) |
| `servidor2.centro.intranet` | 8080 | **Nginx** | phpMyAdmin (PHP-FPM) |

---

## Servicios Implementados

El proyecto cumple con los siguientes requerimientos técnicos:

* **Gestor de Contenidos (CMS):** Instalación de WordPress sobre LAMP.
* **Aplicación Python WSGI:** Despliegue de una app de gestión académica desarrollada en Flask, servida mediante `mod_wsgi`.
* **Seguridad:** Implementación de `Auth Basic` (protección por contraseña) para el área de departamentos.
* **Monitorización:** Análisis de tráfico y logs mediante **AWStats**.
* **Servidor Secundario:** Despliegue paralelo de **Nginx** en puerto alternativo (8080) gestionando **phpMyAdmin**.

---

## Estructura de la Documentación

El desarrollo paso a paso se encuentra detallado en la carpeta `Proyecto`. Haz clic en los enlaces para ver el procedimiento técnico:

* [**01. Infraestructura Base:**](https://github.com/1dd0Rv/SREI/blob/server_web/Proyecto/01_LXC%20con%20LAMP.md) Justificación del LXC y configuración inicial de red.
* [**02. Servidor Web Apache:**]([Conf_apache/02_Pasos_iniciales.md](https://github.com/1dd0Rv/SREI/blob/server_web/Proyecto/02_Pasos%20iniciales.md)) Configuración de Virtual Hosts y DNS local.
* [**03. Despliegue CMS:**]([Conf_apache/03_Configuracion_de_Wordpress.md](https://github.com/1dd0Rv/SREI/blob/server_web/Proyecto/03_Configuraci%C3%B3n%20de%20Wordpress..md)) Instalación y securización de WordPress.
* [**04. Aplicación Python:**]([Conf_apache/04_WSGI.md](https://github.com/1dd0Rv/SREI/blob/server_web/Proyecto/04_WSGI.md)) Configuración de `mod_wsgi`, entorno virtual y despliegue de app Flask con autenticación.
* [**05. Monitorización y Nginx:**](Conf_apache/05_AWStats_Nginx.md) Configuración de estadísticas y segundo servidor web.

---

## Requisitos Previos

Para replicar este entorno en local, es necesario configurar la resolución de nombres en la máquina cliente.

### Configuración del archivo `hosts`
Añade la IP de tu contenedor LXC a tu archivo de hosts local (`/etc/hosts` en Linux/Mac o `C:\Windows\System32\drivers\etc\hosts` en Windows):

```text
# Sustituir <IP_LXC> por la IP real del servidor (ej: 192.168.1.50)
<IP_LXC>    centro.intranet
<IP_LXC>    departamentos.centro.intranet
<IP_LXC>    servidor2.centro.intranet
