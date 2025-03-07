#----------------------------- Enunciado ---------------------------
#Script que copia un fichero en otro, controlando que el número de argumentos sea exactamente dos 
#y si no es así indicar como se utiliza el script y salir del programa con código error 1. 
#Los dos ficheros deben existir previamente. 
#Nos deberá preguntar si queremos sobrescribir el segundo fichero dependiendo de nuestra respuesta lo hará o no.
#-------------------------------------------------------------------

#!/bin/bash
# Aqui lo que estamos haciendo es comprobando que el usuario
# nos a pasado dos parametros
if [[ $# -ne 2 ]]; then
	echo "Uso: $0 <fichero> <fichero>"
	exit 1
# Si no es asi el script se para de ejecutar
fi
# Aqui estmos comprobando que los dos parametros que nos ha
# pasado el usuario son ficheros y si lo son que pregunte si el usuario
# los quiere sobreescribir
# si es asi entonces coge la respuesta en la variable resp1
if [[ -f $1 && -f $2 ]]; then
	read -p "¿ Quieres sobreescribir el fichero $2 ? (S/N)" resp1
		# La pasa por aqui y comprueba que la respuesta es o una
		# s minuscula o una S mayuscula y si es asi hace lo que hay
		# dentro del script que es
		# Copiar $1 a $2
		if [[ $resp1 = "S" || $resp1 = "s" ]]; then
			# Copira lo que hay en $1 a $2
			cp $1 $2
			# Le dice al usuario que se ha copiado correctamente
			echo "Se ha copiado correctamente"
		else
			echo "No se ha sobreescrito el fichero $2"
		fi
else
	echo "Tienen que existir los dos ficheros"
fi
