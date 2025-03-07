# Indicamos al sistema que shell queremos usar.
#!/bin/bash

# Le pedimos al usuario que escoga que quiere comer y lo recogemos en una variable.
read -p "Que quiere para comer (Pizza o Hamburguesa)? " resp

# Comprobamos que repuesta a dado y entonces damos una respuesta.
if [[ $resp = "pizza" || $resp = "Pizza" ]]; then
	echo "Vamos al dominos"
elif [[ $resp = "hamburguesa" || $resp = "Hamburguesa" ]]; then
	echo "Vamos al burguer"
else
	echo "Escoga entre pizz o hamburguesa porfavor"
fi