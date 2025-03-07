#-------------------------------- Enunciado -------------------------------
#Lista de la compra. Escribe un script que solicite al usuario una lista de elementos de la compra 
#(por ejemplo, productos de supermercado) y luego imprima la lista.
#--------------------------------------------------------------------------

#!/bin/bash
# Aqui le decimos al usuario que quiere apuntar para la lista de la compra
echo "Que cosas quiere añadir a su lista de la compra? "
# Aqui estamos recogiendo lo que nos ponga en la lista
read -a lista
# Ponemos la variable i que sea 1 para luego irla aumentando
# como pone despues para poder hacer una lista numerada
i=1
for compra in ${lista[@]}
do
	echo $i-$compra
	((i++))
done
