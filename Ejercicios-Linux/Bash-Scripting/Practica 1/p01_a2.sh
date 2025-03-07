#------------------------------- Enunciado ----------------------
#Recibe un nombre de archivo como parámetro e indica mediante un mensaje 
#si el archivo es de: lectura, escritura, y/o ejecutable por el propietario.
#----------------------------------------------------------------

#!/bin/bash
# Aqui lo que estamos comprobando es que el usuario nos a
# puesto solo un valor para ejecutar el bash
if [[ $# -ne 1 ]]; then
	echo "Uso: $0 + <nombre del fichero>"
	exit 1
fi
# Aqui estamos comprobanod que $1 existe
if [[ ! -e $1 ]]; then
	echo "El archivo $1 no existe"
	exit 1
# Si no existe le estamos indicando al script que se salga
fi
mensaje=""
if [[ -r $1 ]]; then
	mensaje+="es de lectura, "
fi
if [[ -w $1 ]]; then
	mensaje="es de escritura, "
fi
if [[ -x $1 ]]; then
	mensaje="es de ejecucion."
fi
	echo "es de $mensaje"
