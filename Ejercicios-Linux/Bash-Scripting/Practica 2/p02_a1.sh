#-------------------------------- Enunciado -------------------------------------
#Desarrolla un script que solicite al usuario que ingrese el nombre de un directorio. 
#Si el directorio ya existe, muestra un mensaje de error. 
#Si el directorio no existe, créalo y muestra un mensaje de confirmación. 
#Luego, pregunta al usuario si desea crear otro directorio. 
#Si la respuesta es "s" (sí), el script solicitará nuevamente el nombre de otro directorio. 
#Si la respuesta es "n" (no), el script finaliza.
#--------------------------------------------------------------------------------

#!/bin/bash
# Aqui lo que estoy haciendo es dando la variable a S para que pueda entrar a el bucle
respu="S"
# Aqui empieza el bucle y lo que estamos haciendo es
# creando directorios
while [[ $respu = "S" || $respu = "s" ]]; do
	# Si la respuesta es si lo que le pregunta es que 
	# directorio quiere crear y lo almacena en resp
	read -p "Que directorio quiere crear?: " resp
	# Aqui compruba que resp es un directorio si lo es le dice que ya existe
	if [[ -d $resp ]]; then
		echo "Este directorio $resp ya existe"
	else
	# Si no existe lo que hace es crearlo y decirle al usuario que lo ha creado
		mkdir $resp
		echo "Se ha creaddo el directorio $resp"
	fi
# Luego antes de acabar el bucle le vuelve a preguntar si quier crear otro si dice si
# se volveria a reanudar el bucle si dice no se acabaria
	read -p "¿ Quieres crear otro directorio? (S/N) ?" respu
done
