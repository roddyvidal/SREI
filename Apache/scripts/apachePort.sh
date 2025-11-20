#!/bin/bash

# Configuration
APACHE_CONFIG_FILE="/etc/apache2/ports.conf" 

function ctrl_c(){
  echo -e "\n[!] Saliendo...\n"
  exit 1
}

# Trap Ctrl+C 
trap ctrl_c INT

function helperPanel(){
  echo -e "\n[+] Uso:"
  echo -e "    $0 -m <numero_de_puerto>"
  echo -e "    $0 -h (Mostrar este panel de ayuda)"
  echo -e "\n[!] Ejemplo: $0 -m 8080"
  exit 0
}

# Function para revisar y añadir el puerto
function addPortToApache(){
  local searchPort="$1"

  # 1. Valiar el numero del puerto
  if ! [[ "$searchPort" =~ ^[0-9]+$ ]] || [ "$searchPort" -le 0 ] || [ "$searchPort" -ge 65536 ]; then
    echo -e "\n[!] Error: El puerto '$searchPort' no es un número de puerto válido (1-65535)."
    exit 1
  fi

  # 2.Revisar si la configuracion existe 
  if [ ! -f "$APACHE_CONFIG_FILE" ]; then
    echo -e "\n[!] Error: No se encontró el fichero de configuración de Apache en '$APACHE_CONFIG_FILE'."
    echo -e "[!] Por favor, actualiza la variable APACHE_CONFIG_FILE dentro del script."
    exit 1
  fi

  echo -e "\n[+] Comprobando la configuración de Apache en: $APACHE_CONFIG_FILE"

  # 3. Comprobar que el puerto existe
  if grep -qE "^[[:space:]]*Listen[[:space:]]+(\*:[[:space:]]*)?$searchPort([[:space:]]|$)" "$APACHE_CONFIG_FILE"; then
    echo -e "[!] El puerto '$searchPort' ya está configurado para escuchar en el fichero: $APACHE_CONFIG_FILE"
    exit 0 # Exit successfully since the port is already configured
  else
    echo -e "[+] El puerto '$searchPort' no está presente. Añadiendo 'Listen $searchPort'..."
    
    # 4. Agregar el puerto usando la directiva Listen
    if echo "Listen $searchPort" >> "$APACHE_CONFIG_FILE"; then
      echo -e "[+] Línea 'Listen $searchPort' añadida con éxito."
      
      # 5. Restablecer apache2
      echo -e "\n[!] Atención: Para que el cambio surta efecto, debes reiniciar el servicio Apache."
      echo -e "[?] ¿Deseas reiniciar Apache ahora? (s/N)"
      read -r confirmation

      if [[ "$confirmation" =~ ^[Ss]$ ]]; then
        echo -e "[+] Intentando reiniciar el servicio..."

        if command -v systemctl &> /dev/null; then
          sudo systemctl restart apache2 || sudo systemctl restart httpd
        elif command -v service &> /dev/null; then
          sudo service apache2 restart || sudo service httpd restart
        else
          echo -e "[!] Advertencia: No se pudo determinar el comando de reinicio (systemctl o service no encontrado)."
          echo -e "[!] Por favor, reinicia Apache manualmente (ej: sudo systemctl restart apache2)."
        fi
      else
        echo -e "[!] Recuerda reiniciar Apache manualmente para aplicar los cambios (ej: sudo systemctl restart apache2)."
      fi
      
    else
      echo -e "\n[!] Error: No se pudo añadir la línea al fichero '$APACHE_CONFIG_FILE'."
      echo -e "[!] Asegúrate de tener permisos de escritura (posiblemente necesites usar 'sudo')."
      exit 1
    fi
  fi
}

# --- Main Logic ---

declare -i paremeter_counter=0
searchPort="" # Initialize variable

# Process command-line options
while getopts "m:h" arg; do
  case $arg in
    m) searchPort=$OPTARG; let paremeter_counter+=1;;
    h) helperPanel;; 
    \?) 
        echo -e "\n[!] Opción no válida: -$OPTARG" >&2
        helperPanel
        ;;
    :) 
        echo -e "\n[!] La opción -$OPTARG requiere un argumento." >&2
        helperPanel
        ;;
  esac
done


if [ $paremeter_counter -eq 1 ] && [ -n "$searchPort" ]; then
  addPortToApache "$searchPort"
else
  helperPanel
fi
