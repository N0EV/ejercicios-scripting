#-------------------------------- Enunciado ------------------------------------------
#Desarrolla un script Bash que permita al usuario ingresar el nombre de un grupo primario. 
#El script mostrará todos los usuarios cuyo grupo primario coincida con el grupo ingresado, 
#proporcionando así una forma rápida de consultar los usuarios asociados a un grupo específico en el sistema.
#--------------------------------------------------------------------------------------

#!/bin/bash
# Aqui le estamos diciendo que si no hay ningun parametro
# que le salga al usuario como tiene que usarlo
if  [[ $# -eq 0 ]]; then
	echo "Uso: $0 <nombre del grupo primario>"
	exit 1
fi
# Si lo anterior no se cumple se hace esto
# Aqui le inidco que el primer parametro es el grupo primario
grupo_primario=$1
# Aqui le esto diciendo que dentro de /etc/group me busque el usuario que me a pasado el usuario
# y que corte el tercer sitio despues de los dos puntitos ":"
id_grupo_primario=$(grep "^$grupo_primario:" /etc/group | cut -d: -f3)
# Una vez hecho eso que vaya a /etc/passwd y de lo que ha conesguido antes
# que seria el numero de grupo me coja el primer despues de los dos puntitos ":"
usuarios=$(grep -E "^[^:]+:[^:]+:[^:]+:$id_grupo_primario" /etc/passwd | cut -d: -f1)
# Por ultimo lo listamos en un bucle for
# y aqui lo unico que estamos haciendo es listarlo uno a uno
for usua in $usuarios
do
	echo $usua
done
