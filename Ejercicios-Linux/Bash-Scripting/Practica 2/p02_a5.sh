#-------------------------------- Enunciado --------------------------------
#Contador de palabras en un archivo de texto: 
#Escribe un script que solicite al usuario que ingrese el nombre de un archivo de texto 
#y luego cuente el número de palabras en ese archivo. 
#Controlar si el archivo de texto existe o no. 
#---------------------------------------------------------------------------

#!/bin/bash
# Aqui estamos viendo que nos haya pasado dos parametros
if [[ $# -ne 1 ]]; then
	# por que es el nombre del fichero y algo mas
	echo "Uso: bash $0 <nombre de archivo de texto>"
	# Si no se usa bien me salgo del script
	exit 1
fi
# Creo una variable para le dolar uno
archivo=$1
# Aqui veo que la variable archivo es un fichero
if [[ -f $archivo ]]; then
	# si es asi le paso esto
	npalabras=$(wc -w < "$archivo")
else
	# Si no es asi le digo que no es un fichero
	echo "Esto no es un fichero"
	# y me salgo
	exit 1
fi
#Despues le imprimo el numero de palabras
echo "En este \"$archivo\" fichero hay $npalabras palabras"
