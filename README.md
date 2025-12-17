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
├── README.md                      # Documentación principal del proyecto
└── docs/                          # Guías detalladas de implementación
    ├── 01_VPC_EC2.md             # Creación de Red, Subredes e Instancia
    ├── 02_LAMP.md                # Instalación y configuración de Apache y PHP
    ├── 03_Base_Datos.md          # Despliegue de RDS y conexión segura
    ├── 04_EFS.md                 # Configuración del almacenamiento elástico
    ├── 05_Wordpress.md           # Instalación del CMS y configuración inicial
    └── 06_EFS_WP_Content.md      # Migración de contenido estático a EFS
