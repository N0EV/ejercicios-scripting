#-------------------------------------------- Enunciado -------------------------------
#Desarrolla un script que, al recibir como parámetros los nombres de usuario, genere un informe simple mostrando
#la fecha del último cambio de contraseña para cada uno de los usuarios especificados. 
#El script utilizará la información del archivo /etc/shadow para obtener estos detalles.
#--------------------------------------------------------------------------------------

#!/bin/bash

# Verifica si se proporciona un argumento (nombre de usuario)
if [ $# -ne 1 ]; then
  echo "Uso: $0 <usuario>"
  exit 1 # Salir con código de error si no se proporciona el argumento
fi

usuario="$1"

# Verifica si el usuario existe
if ! getent passwd "$usuario" > /dev/null; then
  echo "Error: El usuario '$usuario' no existe."
  exit 1
fi

# Obtiene la información del usuario del archivo /etc/shadow
linea=$(sudo grep "^$usuario:" /etc/shadow)

# Verifica si se encontró la línea del usuario en /etc/shadow
if [ -z "$linea" ]; then
  echo "Error: No se encontró información de contraseña para '$usuario'."
  exit 1
fi

# Extrae la fecha de cambio de contraseña
fecha_cambio=$(echo "$linea" | cut -d: -f3)

# Verifica si la fecha de cambio es válida
if [[ ! "$fecha_cambio" =~ ^[0-9]+$ ]]; then
  echo "Error: Fecha de cambio de contraseña no válida."
  exit 1
fi

# Calcula la fecha legible
fecha_inicio="1970-01-01"
fecha_legible=$(date -d "$fecha_inicio + $fecha_cambio days" "+%Y-%m-%d")

# Muestra el resultado
echo "Usuario: $usuario"
echo "Fecha de cambio de contraseña: $fecha_legible"

exit 0 # Salir con código de éxito