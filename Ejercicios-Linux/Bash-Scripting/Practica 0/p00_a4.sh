#------------------------------ Enunciado --------------------------
#Verificación de contraseña. Crea un script que solicite al usuario una contraseña y la verifique. Si la contraseña es "secreto234.", 
#muestra un mensaje indicando que el acceso está permitido; de lo contrario, muestra un mensaje de error.
#--------------------------------------------------------------------

#!/bin/bash
# Aqui le etamos pidiendo a el usuario la conntraseña
# y la guardamos en la variable secreto
read -p "Introduzca su contraseña: " secreto
# Una vez hecho esto comprobamos que conincida lo que escribe
# con secreto234 y si no es asi que de error
if [[ $secreto = "secreto234" ]]; then
	echo "La contraseña es correcta"
# Si no es asi le decimos al usuario que la contraseña no es correcta
else
	echo "La constraseña es incorrecta"
fi
