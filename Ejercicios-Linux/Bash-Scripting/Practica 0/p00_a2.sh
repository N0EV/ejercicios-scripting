#-------- Enunciado --------------------------------------------------------------------------
#Script que solicite dos números por teclado y calcule su diferencia mostrándola por pantalla.
#---------------------------------------------------------------------------------------------

#!/bin/bash
# Aqui le pedimos al usuario que nos pase un numero
echo "Me puedes pasar los numeros porfa:"
read n1
# Lo recogemos con la variable n1
# Y ahora le pedimos otro numero y lo recogemos con la variable n2
read -p "Me puedes pasar el segundo numero: " n2
# Ahora hacemos el calculo de la resta entre los dos numeros
resta=$(($n1-$n2))
# Le damos el resultado
echo "La diferencia estre los numeros $n1 y $n2 es: $resta"
