## 1 Crea un directorio llamado "dir1" y otro llamado "dir2"

<img width="810" height="122" alt="imagen" src="https://github.com/user-attachments/assets/31983062-8cc3-4709-a41f-afeac08deed3" />

<img width="841" height="169" alt="imagen" src="https://github.com/user-attachments/assets/c07f7705-26fc-453e-a35d-d941c1844cf5" />


---

## 2 Explica qué diferencia existe entre ambos y muestra su equivalencia con la directiva Require:
<Directory /var/www/example1>
Order Deny,Allow
Deny from All
Allow from 192.168.1.100
</Directory>


<Directory /var/www/example1>
Order Allow,Deny
Deny from All
Allow from 192.168.1.100
</Directory>

- El primer bloque **Order Deny, Allow** solo permite acceso a la ip "192.168.1.100".
- El segundo bloque **Order Allow, Deny** niega el acceso a todas las ip incluyendo la "192.168.1.100".

- El primeer bloque con la directiva **Require** quedaria asi:
<Directory /var/www/example1>
Require ip 192.168.1.100
</Directory>

- EL segundo bloque:
<Directory /var/www/example1>
Require all denied
</Directory>

---

## 3 Para dir1
- A) Permite el acceso de las peticiones provenientes de 10.3.0.100

- B) Permite el acceso desde "marisma.intranet"

- C) Permite el acceso desde cualquier subdominio de "marisma.intranet"

- D) Permite el acceso de las peticiones provenientes de "10.3.0.100" con máscara "255.255.0.0"

<img width="956" height="115" alt="imagen" src="https://github.com/user-attachments/assets/f0b99036-1fd5-4150-8f6f-5b7d02e3245b" />

<img width="562" height="293" alt="imagen" src="https://github.com/user-attachments/assets/a41d38e1-fd63-4228-88af-73dc7896981e" />

---

## 4) Modifica la configuración de forma que el acceso a dir1: Se permita a "marisma.intranet" y no se permita desde 10.3.0.101"


<img width="635" height="231" alt="imagen" src="https://github.com/user-attachments/assets/18f8ab6a-c6e5-47db-93ab-cacd56af899d" />

---

## 5) Modifica la configuración de forma que el acceso a dir2: Se permita a "10.3.0.100/8" y no a "marisma.intranet"


<img width="496" height="233" alt="imagen" src="https://github.com/user-attachments/assets/8cc90f7a-12c3-4339-9840-c03b0fc5ea0c" />




