# Le decimos al sistema que shell queremos usar.
#!/bin/bash

# Comprobamos la cantidad de argumentos escritos.
if [[ $# -eq 0 ]]; then
	echo "Uso: $0 <elige Hamburguesa o pizza>"
	exit 1
fi

# Hacemos una variable con lo que el usuario haya escrito en la primera posicón.
sitio=$1
# Vemos que ha escrito el usuario y le damos una respuesta.
case $sitio in
	hamburguesa|Hamburguesa)
		echo "burguer, macd";;
	pizza|Pizza)
		echo "Dominos, Telepbasura";;
	*)
		echo "Elige una opción"
		echo "Uso: $0 <elige Hamburguesa o pizza>";;
esac