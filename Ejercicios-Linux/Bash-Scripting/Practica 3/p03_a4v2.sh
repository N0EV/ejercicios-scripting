#-------------------------------------------- Enunciado -------------------------------
#Desarrolla un script que, al recibir como parámetros los nombres de usuario, genere un informe simple mostrando
#la fecha del último cambio de contraseña para cada uno de los usuarios especificados. 
#El script utilizará la información del archivo /etc/shadow para obtener estos detalles.
#--------------------------------------------------------------------------------------

#!/bin/bash
# Comprobamos que el usuario nos ha pasado algo de argumento.
if [[ $1 -eq 0 ]]; then
	echo "Uso: $0 <usuarios>"
fi
# Creamos variables que usaremos.
echo "Usuario: Fecha de cambio de contraseña"
fecha_inicio="1970-01-01"
contenido_shadow=$(sudo cat /etc/shadow)
# Hacemos un bucle para todo el contenido del fichero /etc/shadow.
for linea in $contenido_shadow; do
	usuario=$(echo "$linea" | cut -d: -f1)
	fecha_cambio=$(echo "$linea" | cut -d: -f3)
	fecha_legible=$(date -d "$fecha_inicio + $fecha_cambio days" "+%Y-%m-%d")
	echo "$usuario: $fecha_legible"
done