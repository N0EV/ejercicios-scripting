#-------------------------------------------- Enunciado -------------------------------
#Desarrolla un script que, al recibir como parámetros los nombres de usuario, genere un informe simple mostrando
#la fecha del último cambio de contraseña para cada uno de los usuarios especificados. 
#El script utilizará la información del archivo /etc/shadow para obtener estos detalles.
#--------------------------------------------------------------------------------------

#!/bin/bash
# Aqui hacemos una variable con una fecha
fechini="1970-01-01"
# Aqui como casi siempre solo estamos controlando que el usuario nos pase mas de 0 parametros
# Aunque creo que es mas eficaz poner que si no es igual a uno salte
if [[ $# -eq 0 ]]; then
	echo "Uso: $0 <nombre usuario>"
	exit 1
fi
# Aqui estamos haciendo un bucle for para todos los usuarios nos pase la fecha de vencimeinto de su contraseña
for usua in $@; do
# Aqui le indicamos que busque lo que nos coja de el archivo /etc/shadow y corte por la tercera parte de los tres puntos ":"
dia=$(grep "$usua" /etc/shadow | cut -d: -f3)
# Una vez echo esto lo que le decimos es que nos pase ese numero a una fecha mas legible
fecha=$(date -d "$fechini + $dia days" "+%Y-%m-%d")
# y que nos saque que el usuario despues de
echo "$dia despues de $fechini; es $fecha"
done
