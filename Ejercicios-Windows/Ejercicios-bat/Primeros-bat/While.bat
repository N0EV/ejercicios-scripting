@echo off

echo Selecciona una opción:
echo 1. Mostrar fecha
echo 2. Mostrar hora
echo 3. Salir
set /p opcion=Elige la opcion:

if %opcion% equ 1 (
	goto fecha
)
if %opcion% equ 2 (
	goto hora
)
if %opcion% equ 3 (
	goto salir
)
:fecha 
echo La fecha actual es:
date /t
goto fin
:hora
echo La hora actual es:
time /t
goto fin
:salir
echo Saliendo del script
goto fin

:fin
pause
