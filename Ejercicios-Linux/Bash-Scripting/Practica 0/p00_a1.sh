#----------------------- Enunciado -------------------------------
# Saludo personalizado. Escribe un script que solicite al usuario su nombre, apellido y fecha de nacimiento y 
# luego imprima un saludo personalizado calculando su edad.
#-----------------------------------------------------------------

#!/bin/bash
# Aqui se le pide al usuario su nombre y se recoge en nombre con read
echo "¿ Cual es tu nombre ?"
read nombre
# Aqui hacemos lo mismo que antes pero con el apellido
echo "¿ Cual es tu apellido ?"
read apellido
# Aqui lo mismo pero con el año
echo "¿ Cual es tu año de nacimiento ?"
read year
# Aqui calculamos los ñaos que tiene el usuario apartir de el año de nacimiento
anio=$(date +"%Y")
edad=$((anio-year))
# Luego le decimos al usuario todos los datos en una frase
echo "Hola $nombre $apellido y tu edad es: $edad, Biemvenido a Ubuntu"

