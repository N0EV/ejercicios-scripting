# Le decimos al sistema que shell queremos usar.
#!/bin/bash

# Comprobamos cuantos argumentos nos da el usuario
if [[ $# -ne 1 ]]; then
	echo "Uso: $0 <nombre del directorio>"
	exit 1
fi

# Creamos dos variables
ruta=$1
i=0

# Comprobamos que el argumento que nos ha pasado es un directorio.
if [[ ! -d $ruta ]]; then
	echo "Este directorio no existe"
	exit 1
fi
# Si lo es nos movemos a el directorio.
cd $ruta

# Contamos todos los archivos .txt que haya dentro del directorio indicado.
for archivo in *.txt; do
	if [[ -r $archivo ]]; then
		((i++))
	fi
done
# Le decimos al usuario cuantos dicheros .txt hay en el directorio indicado.
echo "Los archivos en la ruta $ruta tienen los siguientes archivos de lectura: $i "
