## Elastic File System

- En la web principal de aws buscamos EFS y le daremos a crear sistemas de archivos. Le ponemos nombre y seleccionamos la vpc donde esta nuestra EC2.

  <img width="736" height="733" alt="image" src="https://github.com/user-attachments/assets/8da48bea-8ded-45bf-9680-5aef15b0b806" />

- Una vez creado pincharemos en el nombre que le pusimos que estará en azul. Vemos que se crearon todas las monturas sin errores

<img width="1459" height="436" alt="image" src="https://github.com/user-attachments/assets/2215f6ce-afa8-4498-86de-d71003aedc94" />

- Ahora iremos a EC2 $\rightarrow$ Network & Security $\rightarrow$ Security Groups.

  <img width="1704" height="799" alt="image" src="https://github.com/user-attachments/assets/5dc2f3c8-b42f-4e79-bb1c-124310152dfd" />

- Pinchamos en el grupo que se nos ha creado con la EFS y abajo nos vamos a Inbound rules.

  <img width="1704" height="701" alt="image" src="https://github.com/user-attachments/assets/f0127bdc-ed40-446c-848a-eb6113b570a8" />

- Le damos a add rule y ponemos NFS. En origen (Source) ponemos cualquier IP.

  <img width="1532" height="333" alt="image" src="https://github.com/user-attachments/assets/9e7af914-ecd7-4984-8d6b-47c836f3fd27" />

- Crearemos una carpeta en nuestra shell para trabajar mas organizados.

  <img width="597" height="119" alt="image" src="https://github.com/user-attachments/assets/f3149d65-13a3-4a5a-a1c3-66e504385d51" />

- En el apartado EFS $\rightarrow$ File system $\rightarrow$ Nuestra EFS, le damos a attach y nos dara un comando que tenemos que poner en nuestra terminal para asociar nuestra EC2 con EFS

  <img width="1916" height="734" alt="image" src="https://github.com/user-attachments/assets/62cd6f6f-60d0-4be3-9a78-0f6aafc32eca" />

- Añadimos la ruta de nustra carpeta al final

  <img width="1130" height="151" alt="image" src="https://github.com/user-attachments/assets/896562cd-d61f-41b4-8b18-34f04b7e52cd" />

  <img width="1123" height="416" alt="image" src="https://github.com/user-attachments/assets/dae2c01b-539c-4d62-88fc-f06fb9153d79" />

  [Siguiente](https://github.com/1dd0Rv/SREI/blob/wdpss_aws/Proyecto%20/05_Wordpress.md)


  







