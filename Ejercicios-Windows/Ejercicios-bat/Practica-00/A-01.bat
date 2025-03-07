rem ------------------------ Enunciado ----------------------------
rem Crea un script que reciba por parámetro dos valores. 
rem Deberá mostrar por pantalla el resultado de las operaciones de suma, resta y multiplicación de ambos valores.
rem En esta primera versión no se pide que se realice ninguna comprobación de parámetros. Nos vamos a centrar en que el script funcione.
rem ---------------------------------------------------------------

@echo off 
:: Le pedimos al usuario dos numeros por parametro
echo Has pasado por parametro dos numeros: %1 %2
:: Cogo y paso los dos parametros a unas variables
set num1=%1
set num2=%2
:: Una vez recogido los parametros y pasados a unas variables
:: lo pasariamos para hacer todos los calculos
set /a suma=%num1% + %num2%
set /a resta=%num1% - %num2%
set /a multi=%num1% * %num2%
:: Una vez echos los calculos se los diremos al usuario
echo.
echo La suma de %num1% y %num2% es: %suma%
echo La resta de %num1% y %num2% es: %resta%
echo La multiplicacion de %num1% y %num2% es: %multi%
