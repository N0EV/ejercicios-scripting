#------------------------------ Enunciado ----------------------------------
#Listar documentos y dependiendo de la fecha de creación de ficheros crear 
#un directorio de nombre año_mes y mover allí los ficheros.
#---------------------------------------------------------------------------

#!/bin/bash
# Aqui nos movemos a la carpeta documentos en home
cd ~/Documentos
# Luego lo listo
ls -l ~/Documentos
# Aqui estoy haciendo recursivo que todos los archivos que esten dentro de un directorio
# los mire todos
for archivo in *; do
	fecha_creacion=$(stat -c %y "$archivo" | cut -d' ' -f1)
	anio=$(date -d "$fecha_creacion" "+%Y")
	mes=$(date -d "$fecha_creacion" "+%m")
	dirdestino="$anio"_"$mes"
		# Aqui comprueba si es no es un directorio si no lo es crea el directorio
		if [[ ! -d $dirdestino ]]; then
			mkdir $dirdestino
		fi
	mv $archivo $dirdestino
done
