# Le decimos al sistema que tipo de shell vamos a usar.
#!/bin/bash

# Le preguntamos al usuario el nombre del fichero y lo recogemos en una variable.
read -p "Dime el nombre de un fichero: " fich

# Le preguntamos un numero al usuario y lo recogemos en una variable.
read -p "Dime el numero de ficheros que quieres: " num

# Vamos listando todo los ficheros hasta que llegue al numero de la variable anterior.
for (( i=1;i<=$num;i++)); do
	archivo=$fich$i
	touch $archivo.txt
done
