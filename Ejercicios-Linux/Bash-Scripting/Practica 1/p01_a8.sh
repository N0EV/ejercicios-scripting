#---------------------------------- Enunciado -------------------------------
#Crear un script que cree el siguiente menú de manera repetitiva, solicite una opción y dependiendo de esta realice la acción correspondiente.
#
# MENU 
# 	1- Conexiones actuales.
#	2- Contenido del directorio actual.
#	3- Limpiar Pantalla y salir del menú
#----------------------------------------------------------------------------

#!/bin/bash
# Aqui lo que estamos haciendo es que mientras el valor sea verdadero que haga lo siguiente
while true; do
	# Vasicamente decirle al usuario que le diga todo lo siguiente y recoger una
	# variable llamada resp para que el usuario pueda elegir
	echo "Menu:"
	echo "1- Conexiones actuales"
	echo "2- Contenido del directorio actual"
	echo "3- Limpiar la pantalla y salir del menú"
	read -p "Selecciona una opcion: " resp
	echo "El usuario ha seleccionado $resp"
# Una vez recogida la variable lo que hacemos en dependiendo de la respuesta damos varias
# opciones
case $resp in
	1)
	netstat -a;;
	2)
	ls -l;;
	3)
	clear
	break;;
	*)
	echo "Las opciones son desde el 1 hasta el 3; no hay mas opciones";;
esac
done
