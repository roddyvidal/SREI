# Expresiones Regulares (Regex) Solicitadas



## 1. Directorios en `/www/` con tres dígitos

**Regex:**
^\/www\/\d{3}$ 

---

## 2. Ficheros: *.gif, *.jpeg, *.jpg, *.png
 
 **Regex:**
 .+\.(jpe?g|png|gif)$

 ---

 ## 3. Redirección de GIF a JPEG en otro servidor

 **Regex:**
 RedirectMatch 301 ^/(.*)\.gif$ [http://otro-servidor.com/$1.jpeg](http://otro-servidor.com/$1.jpeg)

---

## 4.  Números enteros y decimales

Números que pueden tener o no un signo y pueden tener o no una parte decimal.

**Regex:**

^[+\-]?\d+(\.\d+)?$

---

Ejemplos que coinciden: 123, -45, +0, 123.45, -0.5
## 5. Números de teléfono (Formato Americano)

Exactamente 123-123-1234.

Regex:

^\d{3}-\d{3}-\d{4}$

---

### 6. Palabras


**Regex (Solo letras):**

^[a-zA-Z]+$

---

## 7. Códigos de color hexadecimal (24 o 32 bits)

Formatos #RRGGBB (24 bits) o #RRGGBBAA (32 bits, con Alfa).

**Regex:**

^#([0-9a-fA-F]{6}|[0-9a-fA-F]{8})$

---

## 8. Palabras de 4 letras

Asumiendo "letras" como en el punto 6.

Regex:

^[a-zA-Z]{4}$

---

## 9. Número entero sin signo

**Regex:**

^\d+$

---

## 10. Número entero con signo

**Regex:**

^[+\-]?\d+$

---

11. Números reales


**Regex (incluyendo notación científica):**

^[+\-]?(\d+(\.\d*)?|\.\d+)([eE][+\-]?\d+)?$

--- 

## 12. Números reales (solo con exponente)

Para forzar que el número tenga notación científica (exponente).

Regex:

^[+\-]?(\d+(\.\d*)?|\.\d+)([eE][+\-]?\d+)$

---


## 13. Email

**Regex:**

^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$

---

14. Números del 0 al 255

Comúnmente usado para validar octetos de una dirección IP.

Regex:

^(25[0-5]|2[0-4]\d|1\d{2}|[1-9]\d|\d)$

