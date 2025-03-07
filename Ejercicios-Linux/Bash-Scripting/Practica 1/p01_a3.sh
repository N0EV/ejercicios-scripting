#-------------------------- Enunciado --------------------------
#Crear un script que haga lo siguiente pasándole dos argumentos por parámetro directorio y fichero, 
# si el número de argumentos proporcionado no es igual a 2 entonces imprimir un mensaje de uso correcto del script y salir 
#con código error 1.
#
#Si el número de argumentos es correcto: 
#
# * Crear el directorio “dir1” mediante una estructura condicional que saque un mensaje de error por pantalla si dicho directorio ya existe.  
# * Cambiar al directorio “dir1”.  
# * Crear el fichero “fich” con los nombres de los archivos del directorio “/dev” que empiecen por “t” y acaben en cualquier número.  
# * Añadir a dicho fichero el contenido del fichero “/etc/passwd”.
# * Y visualizar el contenido de “fich” de manera paginada.
#---------------------------------------------------------------

#!/bin/bash
# Aqui estamos comprobando que el usuario nos ha puesto
# dos ficheros
if [[ $# -ne 2 ]]; then
	echo "Uso: $0 <directorio> <fichero>"
	exit 1
fi
# Aqui estamos comprobando que $1 es un directorio existente
if [[ -d $1 ]]; then
	echo "El directorio no existe"
	exit 1
# Si no lo es el script se para de ejecutar
else
# Si lo es se empezara a ejecutar todo lo sieguiente
	#Crea el directorio con el nombre que le indique le $1
	mkdir $1
	#Se mueve hasta el
	cd $1
	#Lo lista
	ls /dev/t*[0-9] > $2
	#Y lee todo lo de dentro y se lo pasa a $2
	cat /etc/passwd >> $2
	#Y esto hace un listado mas exaustivo
	less $2
	cat $2 | more
fi
