#-------------------------------- Enunciado ------------------------------
#Conversión de unidades. Escribe un script que solicite al usuario una temperatura en grados Celsius
#y luego convierta esta temperatura a grados Fahrenheit y la imprima.
#-------------------------------------------------------------------------

#!/bin/bash
# Aqui estamos pidiendo al usuario que cuantos ºC  quiere pasar a celsius
# y lo guardamos en una variable llamada celsius
read -p "Que temperatura en ºC qiere pasar a fahrenheit? " celsius
# Luego calculamos cuantos grados fahrenheit son celsius
fahrenheit=$(echo "scale=2; $celsius * 9 / 5 + 32" | bc)
# Aqui le decimos cuanto es el resultado
echo "Hay tantos $fahrenheit grados fahrenheit"
