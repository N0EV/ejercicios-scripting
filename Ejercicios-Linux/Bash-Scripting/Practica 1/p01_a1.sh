#---------------------- Enunciado ---------------------------------------
#Pasados dos valores por parámetro, debemos indicar cuál de los dos es mayor o si son iguales.
#------------------------------------------------------------------------

#!/bin/bash
# $1 y $2 se recongen justo despues de hacer bash y el fichero
# Aqui estos indicando que $1 y $2 que son dos variables
# si $1 es mayor que $2

if [[ $1 -gt $2 ]]; then
	echo "$1 es mayor que $2"
# Si $1 es igual que $2

elif [[ $1 -eq $2 ]]; then
	echo "$1 es igual que $2"
# Si no lo son entonces deducimos que $2
# es mayor que $1
else
	echo "$2 es mayor que $1"
fi
