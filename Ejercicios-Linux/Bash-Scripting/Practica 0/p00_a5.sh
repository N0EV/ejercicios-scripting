#------------------------------------- Enunciado ------------------------------
#Calculadora simple. Crea un script que solicite al usuario dos números y 
#luego le pregunte qué operación desea realizar (suma, resta, multiplicación, división) y muestre el resultado.
#------------------------------------------------------------------------------

#!/bin/bash
# Aqui le estos solicitando al usuario dos numeros distintos y luego
# que nos diga que operacion quiere hacer
read -p "Dame tu primer numero: " num1
read -p "Dame tu segundo numero: " num2
read -p "Que operacion quiere realizar? (resta,suma,multiplicacion,division): " respuesta
# Aqui lo que decimos es en caso de la operacion que eliga antes
# haremos una cosa u otra
case $respuesta in
	resta)
		rst=$(($num1 - $num2));;
	suma)
		rst=$(($num1 + $num2));;
	division)
		rst=$((echo "scale=2; $num1 / $num2" | bc);;
	multiplicacion)
		rst=$(($num1 * $num2));;
esac
# Cuando haya acabado le decimos el resultado final
echo "Tu resultado es $rst"
