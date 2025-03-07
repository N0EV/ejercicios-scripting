#--------------------------------- Enunciado ------------------------------
#Borrar un fichero pasado por parámetro, pero primero lo copiamos al directorio “tmp” por si hubiera que recuperarlo. 
#Controlar que el número de parámetros proporcionados es correcto
#y si no es así indicar como se utiliza el script y salir del programa con código error 1. 
#--------------------------------------------------------------------------

#!/bin/bash
# Aqui lo que estamos es comprobando qwe el usuario nos a puesto
# un parametro que seria el fichero
if [[ $# -ne 1 ]]; then
	echo "Uso: $0 <fichero>"
	exit 1
fi
# Luego aqui estamos comprobando que el $1 que seria
# el parametro que nos a pasado antes es un fichero y existe
if [[ ! -f $1 ]]; then
# si lo es lo que haria el script es
# decirle al usuario que esete fichero no existe y salir
	echo "El fichero $1 no existe en este lugar"
	exit 1
else
# Si estef es un fichero lo que le preguntamos es si lo queriere eliminar y le damos varias
# opciones (S/N) y lo guardamos en la variable respu
	read -p "¿ Quiere eliminar el fichero ? (S/N)" respu
		if [[ $respu = "S" || $respu = "s" ]]; then
		# Si la respuesta guardada en la varibale respu concide con S o s
		# entonces se ejecuta el siguiente if
			if [[ -d "/tmp" ]]; then
			# Este if lo que hace es ver si existe un directorio llamado tmp
			# en la raiz del sistema y si es asi hacer todo lo que tiene despues
				cp $1 "/tmp"
				echo "Se ha guardado el fichero $1 por seguridad en /tmp"
				rm $1
				echo "El archivo $1 se ha eliminado correctamente de este directorio"
			fi
		# Si la respuesta por el contrario es un N o una n se saltaria lo anterior y vendria aqui
		elif [[ $respu = "N" || $respu = "n" ]]; then
		# Aqui lo que haria si es una n o una N es decirle al usuario para su tranquilidad que el fichero
		# no ha sido eliminado
			echo "fichero $1 no eliminado"
		elif [[ $respu = * ]]; then
		# Este lo añadimos por seguridad por si el usuario pone cualquier otra cosa mas que una s o una n
		# y lo que haria es que le diria el uso otra vez y que las respuestas tienene que ser las que le pone en la pregunta
			echo "Uso: $0 <fichero>"
			echo "Las respuestas son S o N, no escriba otra cosa porfavor"
		fi
fi
