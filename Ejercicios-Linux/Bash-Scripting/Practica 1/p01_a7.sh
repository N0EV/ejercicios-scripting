#------------------------- Enunciado --------------------------
#Escribir un script que acepte como parámetro una lista de rutas de ficheros, 
#compruebe que son ficheros normales y les tiene que dar el permiso de ejecución para el propietario. 
#De los que no sean fichero debe mostrar un mensaje indicándolo.
#--------------------------------------------------------------

#!/bin/bash
# Aqui lo que se hace es recoger la variable fichero y coger todo
for fichero in "$@"; do
	# Para que compruebe si la variable fichero es un fichero y si es asi
	if [[ -f $fichero ]]; then
		# Lo que hace es decirle al usuario que se van a cambiar los permisos
		echo "Se van a cambiar los permisos del $fichero"
		# y cambia los permisos
		chmod u+x $fichero
	# Si no es asi lo que hace es lo siguiente
	else
		# Le dice al usuario que el fichero no existe
		echo "El fichero $fichero no existe"
	fi
done
