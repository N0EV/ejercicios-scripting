rem ---------------------------------- Enunciado -------------------------------------
rem Modifica el script anterior de forma que reciba por parámetro la extensión de los ficheros a mostrar. 
rem Si no se pasa ningún parámetro, entonces se tomará como extensión por defecto TXT.
rem ----------------------------------------------------------------------------------

@echo off
setlocal enabledelayedexpansion
rem Para poder hacer la cuenta bien hay que poner lo de arriba "setlocal enabledelayexpansion"
rem y hacer una variable para contar
set cont=0
:: Ahora el usuario podra elegir la extension que quiera el por parametro
set exten=%1
:: Comprobamos si nos ha pasado algo y si no es asi usaremos .txt por defecto
if "%1" equ "" (
	set exten=txt
) else (
	set exten=%1
)
rem NOTA: en los for se pone "%%" para la variable y solo admite un caracter
for %%n in (*.%exten%) do (
	set /a cont=!cont!+1
	echo !cont!-fichero: %%n
)
echo En este directorio hay !cont! ficheros
