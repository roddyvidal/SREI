<div align="center">

![AWS](https://img.shields.io/badge/AWS-%23FF9900.svg?style=for-the-badge&logo=amazon-aws&logoColor=white)
![Debian](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
![Apache](https://img.shields.io/badge/Apache-%23D42029.svg?style=for-the-badge&logo=apache&logoColor=white)
![MySQL](https://img.shields.io/badge/mysql-4479A1.svg?style=for-the-badge&logo=mysql&logoColor=white)
![PHP](https://img.shields.io/badge/php-%23777BB4.svg?style=for-the-badge&logo=php&logoColor=white)
![WordPress](https://img.shields.io/badge/WordPress-%23117AC9.svg?style=for-the-badge&logo=WordPress&logoColor=white)

</div>
# Despliegue de Infraestructura LAMP Escalable en AWS para WordPress

Este repositorio documenta el despliegue manual de una arquitectura web de tres capas (Compute, Database, Storage) utilizando servicios de Amazon Web Services (AWS) y software de código abierto.

El proyecto implementa un CMS WordPress desacoplado, separando la lógica de aplicación, la persistencia de datos y el almacenamiento de archivos estáticos para garantizar escalabilidad, seguridad y alta disponibilidad.

## 📋 Tabla de Contenidos
1. [Arquitectura del Proyecto](#-arquitectura-del-proyecto)
2. [Tecnologías Utilizadas](#-tecnologías-utilizadas)
3. [Estructura del Repositorio](#-estructura-del-repositorio)
4. [Fases de Despliegue](#-fases-de-despliegue)
5. [Consideraciones de Seguridad](#-consideraciones-de-seguridad)

---

## 🏗 Arquitectura del Proyecto

La infraestructura ha sido diseñada para superar las limitaciones de un despliegue monolítico tradicional:

* **Red (VPC):** Segmentación de red personalizada con subredes públicas (para el servidor web) y privadas (para la base de datos).
* **Cómputo (EC2):** Instancia Linux (Debian) actuando como servidor web.
* **Base de Datos (RDS):** Servicio gestionado MySQL para la persistencia de datos relacionales, aislado de la red pública.
* **Almacenamiento (EFS):** Sistema de archivos elástico compartido vía NFS para la carpeta `wp-content`, permitiendo que los archivos multimedia persistan independientemente del ciclo de vida de la instancia EC2.

---

## 🛠 Tecnologías Utilizadas

### Cloud (AWS)
* **VPC & Networking:** Subnetting, Route Tables, Internet Gateway.
* **EC2 (Elastic Compute Cloud):** Servidores virtuales.
* **RDS (Relational Database Service):** Motor MySQL 8.0.
* **EFS (Elastic File System):** Almacenamiento compartido NFSv4.
* **Security Groups:** Firewall a nivel de instancia (Inbound/Outbound rules).

### Software Stack (LAMP)
* **OS:** Debian 11 / Linux.
* **Web Server:** Apache HTTP Server 2.4.
* **Language:** PHP 7.4 / 8.x + librerías (php-mysql, php-xml).
* **Database Client:** MariaDB/MySQL Client.
* **CMS:** WordPress (Latest).

---

## 📂 Estructura del Repositorio

La documentación detallada paso a paso se encuentra organizada en los siguientes módulos:

```text
.
├── README.md                     # Documentación principal del proyecto
└── Proyecto/                     # Guías detalladas de implementación
    ├── 01_VPC_EC2.md             # Creación de Red, Subredes e Instancia
    ├── 02_LAMP.md                # Instalación y configuración de Apache y PHP
    ├── 03_Base_Datos.md          # Despliegue de RDS y conexión segura
    ├── 04_EFS.md                 # Configuración del almacenamiento elástico
    ├── 05_Wordpress.md           # Instalación del CMS y configuración inicial
    └── 06_EFS_WP_Content.md      # Migración de contenido estático a EFS
 ``` 
## Fases de despliegue

#### Infraestructura de Red y Cómputo

Creación de la VPC, subredes públicas/privadas y lanzamiento de la instancia EC2 con grupos de seguridad configurados para permitir tráfico SSH (22) y HTTP (80).
[01_VPC_EC2](https://github.com/1dd0Rv/SREI/blob/wdpss_aws/Proyecto%20/01_VPC_EC2.md)

### Instalacion stack LAMP

Configuración del sistema operativo Debian e instalación de Apache Web Server y PHP con sus librerías necesarias.
[02_LAMP](https://github.com/1dd0Rv/SREI/blob/wdpss_aws/Proyecto%20/02_LAMP.md)

### Capa de datos RDS

Despliegue de una base de datos MySQL en RDS. Se establece la conexión segura desde la instancia EC2 utilizando el cliente de MySQL/MariaDB.
[03_Base_Datos](https://github.com/1dd0Rv/SREI/blob/wdpss_aws/Proyecto%20/03_Base_datos.md)

### Capa de Almacenamiento (EFS)

Implementación de Amazon EFS. Configuración de las reglas de seguridad (Security Groups) de entrada y salida para permitir el montaje NFS (puerto 2049) en la instancia Linux.
[04_EFS](https://github.com/1dd0Rv/SREI/blob/wdpss_aws/Proyecto%20/04_EFS.md)

### Instalación de Wordpressç

Descarga y configuración del CMS conectándolo al Endpoint de la base de datos RDS en lugar de localhost.
[05_Wordpress](https://github.com/1dd0Rv/SREI/blob/wdpss_aws/Proyecto%20/05_Wordpress.md)

### Desacople de contenido estático

Migración de la carpeta wp-content al volumen EFS. Esto asegura que las imágenes, temas y plugins se almacenen en un disco de red persistente y no en la instancia.
[06_EFS_WP-Content](https://github.com/1dd0Rv/SREI/blob/wdpss_aws/Proyecto%20/06_EFS_WP-content.md)



