#-------------------------------- Enunciado -------------------------------
#Desarrolla un script para organizar automáticamente los archivos descargados en el directorio Descargas. 
#El script identificará el tipo de archivo según su extensión y lo moverá a su respectivo directorio de destino, 
#como imágenes (jpg, jpeg, png), música(mp3) u otros archivos, 
#proporcionando una solución eficiente para mantener ordenado el directorio de descargas.
#--------------------------------------------------------------------------

#!/bin/bash
# Para este script vamos a tener que crear las carpetas necesarias en el home (linux)
echo "Vamos a ordenar las descaras"
cd ~/Descargas

: <<COMENT
 Aqui podriamos poner variables para las rutas pero yo no lo he hecho
 otro dato es que en linux hay una variable que es $HOME que es el home
 del usuario que lo este usando
 Aqui vamos a coger todo lo que haya en descargas dado que hemos ido antes
COMENT 

for  archivo in *; do
	extension=${archivo##*.}
	case $extension in
		jpg|jpeg|png|JPG|JPEG|PNG)
			mv $archivo ~/Imágenes;;
		mp3|mp4|MP3|MP4)
			mv $archivo ~/Música;;
		*)
# Si tenemos la variable para la direccion otros podemos poner un
# if [[ ! -d $variableparaotros ]]; then
# 	mkdir $variableparaotros
# fi
			mv $archivo ~/Documentos;;
	esac
done

echo "Archivos ordenados correctamente"
