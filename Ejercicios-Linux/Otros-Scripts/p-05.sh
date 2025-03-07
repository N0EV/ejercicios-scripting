# Le decimos al sistema que shell queremos.
#!/bin/bash

# Bucle en el que le indicamos que el usuario escoga una opcion.
while true; do
	echo "-----------------------------------------------"
	echo "          Menú de Opciones                     "
	echo "-----------------------------------------------"
	echo " [1] Nombra fecha actual "
	echo " [2] Listar los archivos del directorio actual "
	echo " [3] Salir "
	echo ""
	read -p "Elija una de las opciones: " resp
	case $resp in
		1)
			date;;
		2)
			ls -l;;
		3)
			clear
			break;;
		*)
			echo "La opcion no es valida, escoga un numero de 1 a 3";;
	esac
done