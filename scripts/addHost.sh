#!/bin/bash

# --- Colores para la salida ---
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
 
# ---- Validación de entrada ------
if [ "$#" -ne 2 ]; then
    echo -e "\n${redColour}[!] Error: Número de argumentos incorrecto.${endColour}"
    echo -e "\n${redColour}[!] Uso: sudo $0 <IP_ADDRESS> <DOMAIN_NAME>${endColour}"
    exit 1
fi

# ------ Variables ------
ip_address=$1
domain_name=$2
host_file="/etc/hosts"

# ------ Lógica -----
echo -e "\n${purpleColour}[+] Comprobando si '$domain_name' existe en '$host_file'...${endColour}"


if grep -q -w "$domain_name" "$host_file"; then
    echo -e "\n${blueColour}[!] El dominio '$domain_name' ya existe. No se requiere ninguna acción.${endColour}"
    exit 0
else 
    echo -e "\n${yellowColour}[+] El dominio '$domain_name' no existe. Añadiendo la entrada...${endColour}"
    echo -e "$ip_address $domain_name" >> "$host_file"

    if [ $? -eq 0 ]; then
        echo -e "\n${greenColour}[+] ¡Éxito! La entrada '$ip_address $domain_name' ha sido añadida a '$host_file'.${endColour}"
        exit 0
    else
        echo -e "\n${redColour}[!] Error: No se pudo escribir en el fichero '$host_file'. ¿Ejecutaste el script con sudo?${endColour}"
        exit 1
    fi
fi
