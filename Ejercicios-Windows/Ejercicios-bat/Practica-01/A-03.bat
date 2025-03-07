rem --------------------------------- Enunciado ------------------------------------
rem Modifica el script de forma que reciba como segundo parámetro la ruta de un directorio donde se buscarán los ficheros. 
rem Si no se pasa segundo parámetro, el script buscará por defecto los ficheros en el directorio actual.
rem --------------------------------------------------------------------------------

@echo off
setlocal enabledelayedexpansion
rem Para poder hacer la cuenta bien hay que poner lo de arriba "setlocal enabledelayexpansion"
rem y hacer una variable para contar
set cont=0
:: Ahora el usuario podra elegir la extension que quiera el por parametro
set exten=%1
:: Ponemos una opcion en el segundo parametro para poder indicar la ruta
:: si la ruta no la indica se hara en donde este el usuario ejecutando el batch
set lug=%2
:: Ahora comprobamos que si no pasa el usuario nada en el parametro
:: se ejecute en el lugar donde lo esta llamando
if "%2" equ "" (
:: Se puede dejar vacio la variable o ponerle un punto
:: "set lug="  O "set lug=."
	call A-02.bat
	goto final
) else (
	set lug=%2\
)
:: Comprobamos si nos ha pasado algo y si no es asi usaremos .txt por defecto
if "%1" equ "" (
	set exten=txt
) else (
	set exten=%1
)
rem NOTA: en los for se pone "%%" para la variable y solo admite un caracter
for %%n in (%lug%*.%exten%) do (
	set /a cont=!cont!+1
	echo !cont!-fichero: %%n
)
echo En este directorio hay !cont! ficheros@echo off 
:final
echo Bat finalizado
pause
