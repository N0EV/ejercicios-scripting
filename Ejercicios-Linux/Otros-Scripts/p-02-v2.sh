# Le decimos al sistema que shell queremos.
#!/bin/bash

# Le pedimos al usuario que queriere y lo guardamos en una variable.
read -p "Que quiere para comer (Pizza o Hamburguesa)? " resp

# Comprobamos que respuesta a dado.
if [[ $resp = "pizza" || $resp = "Pizza" ]]; then
	echo "Vamos al dominos"
else
	if [[ $resp = "Hamburguesa" || $resp = "hamburguesa" ]]; then
		echo "Vamos al burguer"
	fi
fi

: <<"COMENT"
En este caso si el usuario no pone de respuesta una de las dos opciones no dara mensaje
# de error simplemente acabara el script.
COMENT