#-------------------------------------- Enunciado -------------------------------
#Crea un script para automatizar el proceso 
#para agregar todos los usuarios que pertenecen a un grupo primario específico a un grupo secundario indicado en un sistema Linux. 
#El usuario puede especificar los nombres de los grupos primario 
#y secundario como argumentos al ejecutar el script.
#--------------------------------------------------------------------------------

#!/bin/bash
# Aqui estmos viendo que el usuario nos haya puesto algo diferente a dos
if  [[ $# -ne 2 ]]; then
	# si es asi le saltara el siguiente mensaje con la forma de uso
	echo "Uso: $0 <nombre del grupo primario> <nombre del grupo secundario"
	exit 1
fi
# Aqui estamos poniendo la primera variable
grupo_primario=$1
# Aqui estamos dando la segunda variable
grupo_secundario=$2
# Aqui estos diciendo lo mismo que en el anterior script
# que nos busque dentro de /etc/group los que nos aya padado el usuario como grupo primario y lo "corte" de la tercera posicion despues de los puntos
id_grupo_primario=$(grep "^$grupo_primario:" /etc/group | cut -d: -f3)
# Aqui lo que etamos diciendo es que busque dentro de /etc/passwd lo que hemos conseguido con la anterior busqueda y que corte en la primear posicion
usuarios=$(grep -E "^[^:]+:[^:]+:[^:]+:$id_grupo_primario" /etc/passwd | cut -d: -f1)
# Una vez hecho esto lo que vamos a hacer es ver si los usuarios que hemos conseguido antes
# estan en el grupo primario si no es asi entonces el script se parara
if [[ -z $usuarios ]]; then
	echo "No se encontraron usuarios en el grupo primario '$grupo_primario'."
	exit 1
fi
# Aqui estamos haciendo un bucle for para todos los usuarios para hacer en bucle lo siguiente
for usua in $usuarios; do
	# primero añadir a el usuario al grupo secundario
	sudo adduser "$usuarios" "$grupo_secundario"
	# despues decirle a el usuario que ejcuta el script que el usuario se le ha añadido al grupo secundario correctamente
	echo "El usuario $usuario ha sido agregado al grupo secundario '$grupo_secuandario' correctamente"
done
