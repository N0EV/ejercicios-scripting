rem ------------------------------- Enunciado --------------------------------------
rem Crea un script que recibirá por parámetro un número. Deberá calcular y mostrar la tabla de multiplicar del número pasado por parámetro.
rem Si no se pasa ningún valor por parámetro, se dará un mensaje de error y terminará la ejecución del script.
rem --------------------------------------------------------------------------------

@echo off
setlocal enabledelayedexpansion
set num=%1
set mult=0
:: Compruebo que me haya pasado algo el usuario
if "%num%" equ "" (
	echo Uso: %0 "numero que quiera hacer la tabla de multiplicar"
	goto final
)

echo Ahora vamos a hacer la tabla de multiplicar de %1
echo Vamos a empezar la multiplicacion
:: Aqui le estamos diciendo que coja desde el numero 1, de en 1 en 1, acabe en 10
for /l %%a in (1,1,10) do (
	set /a mult=%num% * %%a
	echo %num% * %%a es !mult!
)
goto fin

:final
pause

:fin
