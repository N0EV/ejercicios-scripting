:: NOTA IMPORTANTE: Esto es temporal alomejor lo acabo a lo mejor no
rem ------------------------------------- Enunciado -----------------------------------
rem Crea un nuevo script que recibirá dos valores obligatorios por parámetro. 
rem El primer parámetro será un nombre de usuario y el segundo parámetro será un nombre de grupo. 
rem
rem Al ser obligatorios ambos parámetros, debemos comprobar que el usuario los proporciona. 
rem Si no es así, se debe mostrar un mensaje de error que indique el problema. 
rem
rem El script deberá añadir una nueva cuenta de usuario con el nombre de usuario pasado en el primer parámetro. 
rem La cuenta de usuario tendrá por defecto la siguiente contraseña: Nombre_del_grupo#2024. 
rem Donde Nombre_del_grupo será el nombre del grupo que se proporciona en el segundo parámetro. 
rem Además debemos configurar la cuenta de usuario para que el usuario deba cambiar la contraseña en su primer inicio de sesión. 
rem
rem 	- Creará el grupo que se proporciona en el segundo parámetro (si no existe?). 
rem
rem 	- Después añadirá el usuario al grupo pasado en el segundo parámetro. 
rem
rem 	- Crea un directorio con el nombre del grupo dentro del directorio C:\Cursos. 
rem 	- Dentro del directorio del grupo, deberás crear un directorio con el nombre del usuario. 
rem -----------------------------------------------------------------------------------

@echo off
:: Recogemos por parametro las dos variables
set nom=%1
set grup=%2
:: Comprobamos que nos las han pasado algo
if "%nom%" equ "" (
	echo Uso: "el nombre del usuario que quiera añadir" "grupo al que se le va a añdir"
	goto final
)
:: Ahora comprobamos el segundo parametro
if "%grup%" equ "" (
	echo Uso: "%nom% es el nombre" "grupo al que se le va a añadir"
	goto final
)
:: Una vez echo esto lo que haremos sera añadir a este usuario al sistema
:: por defecto se le asignara la contraseña %grup%#2024
:final
pause
