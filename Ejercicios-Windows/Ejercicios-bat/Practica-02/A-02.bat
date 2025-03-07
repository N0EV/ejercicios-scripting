:: NOTA IMPORTANTE: Esto a lo mejor lo acabo a lo mejor no
rem ----------------------------------- Enunciado --------------------------------
rem Crea un script que utilizaremos para crear la infraestructura necesaria para impartir un nuevo curso en nuestra empresa. 
rem El script recibirá como único parámetro opcional el nombre del curso a impartir. 
rem Si no se proporciona ningún valor por parámetro, entonces se solicitará el nombre del curso al usuario por teclado. 
rem
rem Si el usuario, en esta segunda oportunidad, deja el nombre del curso en blanco, 
rem entonces terminaremos la ejecución del script con un mensaje de error donde advertiremos que es necesario proporcionar el nombre del curso para continuar. 
rem
rem Una vez que se obtenga el nombre del curso, debemos: 
rem
rem 	- Crear un grupo en el sistema con el nombre del curso. 
rem 	- Crear 30 cuentas de usuario, cuyos nombres serán el nombre del curso seguido de un número que irá del 0 al 29, que deberán añadirse al grupo de curso. 
rem 	- Crear un directorio con el nombre del curso en C:\Cursos. 
rem 	- Dentro del directorio del curso, crearemos un directorio para cada uno de los usuarios del curso.
rem
rem Si nos fijamos, esto es lo que hace el script de la actividad anterior. 
rem Así que lo que vamos a hacer es aprovecharlo. Utilizando un bucle for debemos recorrer los números del 0 al 29 llamando al script de la actividad 1 
rem pasándole por parámetro los valores apropiados. 
rem ------------------------------------------------------------------------------

@echo off
set cur=%1
if "%cur%" equ "" (
	set /p 
