#------------------------------- Enunciado --------------------------
#Desarrollar un script Bash que permita pasar varios usuarios y que devuelva los grupos de cada uno de esos usuarios.
#--------------------------------------------------------------------

#!/bin/bash
# Aqui le pongo una variable que quiera guardar en grupos
if [[ $# -eq 0 ]]; then
	echo "Uso: $0 <todos los usuarios que quiera>"
	exit 1
fi
# Aqui lo que estamos haciendo es listar con un for todos
# los "parametros" que nos a pasado el usuario
for grupos in $@
# y que haga lo siguiente
do
	# Esto lo que hace es sacarnos los grupos a los que esta cada "parametro"
	# que nos ha dado el usuario
	groups $grupos
done
# Y acaba aqui
