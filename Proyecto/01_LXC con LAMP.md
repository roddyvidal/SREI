
## 1.1 ¿Por qué usar LXC (Linux Containers)?

Para este proyecto, he optado por desplegar la infraestructura sobre un contenedor **LXC (Linux Container)** en lugar de una Máquina Virtual (VM) tradicional. Esta decisión se basa en los siguientes criterios:

### A. Optimización de Recursos (Lightweight Virtualization)
A diferencia de una VM completa (KVM), que requiere emular hardware y cargar su propio kernel completo, los contenedores LXC comparten el kernel del host (Proxmox).
* **Eficiencia:** El consumo de memoria RAM y CPU es prácticamente idéntico al de ejecutar los procesos nativamente (Overhead mínimo).
* **Densidad:** Nos permite ejecutar múltiples servicios aislados en el mismo hardware sin desperdiciar recursos en la emulación.

### B. Agilidad en el Despliegue (Time-to-Market)
Se ha seleccionado la plantilla **Turnkey Linux LAMP**, una imagen pre-hardened (securizada) y pre-configurada.
* **Reducción de Configuración:** Elimina la necesidad de instalar y configurar manualmente el stack LAMP (Linux, Apache, MySQL, PHP) paquete por paquete.
* **Estandarización:** Garantiza que las versiones de los servicios sean compatibles entre sí desde el primer arranque, evitando conflictos de dependencias ("Dependency Hell").
* **Velocidad de Arranque:** Al no tener que iniciar un kernel completo ni inicializar BIOS virtual, el tiempo de arranque del servidor se reduce a segundos.

### C. Aislamiento y Seguridad
Aunque compartimos el kernel, el espacio de usuario está completamente aislado.
* Si la aplicación web o la base de datos se ven comprometidas, el daño queda contenido dentro del sistema de archivos del contenedor, protegiendo al host y a otros servicios.
* Facilita la gestión de **Snapshots** (instantáneas) antes de realizar cambios críticos en la configuración.

<img width="1523" height="280" alt="image" src="https://github.com/user-attachments/assets/b6f0c908-0fdd-49ca-90c9-9c6231ec39cc" />

Una vez completada la instalación del **LXC** lo encendemos y procederemos a configurar **MySQL**  y  **Apache**. Ponemos la contraseña que indicamos al crear el contenedor. Una vez puesta la contraseña solo tendremos que reiniciar la máquina y ya estaría listo **LAMP**.
