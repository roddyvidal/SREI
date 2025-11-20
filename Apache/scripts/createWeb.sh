#!/bin/bash


# --- Colores para la salida ---
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"

# --- 1. Validación de Entradas ---
if [ "$#" -ne 3 ]; then
    echo -e "\n${redColour}[!] Error: Se requieren exactamente 3 argumentos.${endColour}"
    echo -e "\n${yellowColour}Uso: $0 \"<título>\" \"<cabecera>\" \"<mensaje>\"${endColour}"
    echo -e "${yellowColour}Ejemplo: $0 \"Mi Web\" \"Hola Mundo\" \"Bienvenido a mi página.\""${endColour}
    exit 1
fi

# -- Asignación de Variables ---
PAGE_TITLE="$1"
HEADER_TEXT="$2"
MESSAGE_TEXT="$3"
OUTPUT_FILE="index.html"

# -- Lógica Principal: Generar el HTML ---
echo -e "\n${purpleColour}[+] Generando el fichero '$OUTPUT_FILE'...${endColour}"

cat << EOF > "$OUTPUT_FILE"
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${PAGE_TITLE}</title>
    <style>
        body { font-family: sans-serif; background-color: #f0f0f0; color: #333; }
        .container { max-width: 800px; margin: 40px auto; padding: 20px; background-color: #fff; border-radius: 8px; box-shadow: 0 2px 4px rgba(0,0,0,0.1); }
        h1 { color: #0056b3; }
    </style>
</head>
<body>
    <div class="container">
        <h1>${HEADER_TEXT}</h1>
        <p>${MESSAGE_TEXT}</p>
    </div>
</body>
</html>
EOF


if [ $? -eq 0 ]; then
    echo -e "\n${greenColour}[+] ¡Éxito! El fichero '$OUTPUT_FILE' ha sido creado correctamente.${endColour}"
    echo -e "${blueColour}Puedes abrirlo en tu navegador.${endColour}"
    exit 0
else
    echo -e "\n${redColour}[!] Error: No se pudo crear el fichero '$OUTPUT_FILE'. Verifica los permisos de escritura en el directorio.${endColour}"
    exit 1
fi
