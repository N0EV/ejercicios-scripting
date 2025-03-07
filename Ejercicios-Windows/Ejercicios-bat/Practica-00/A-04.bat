rem ---------------------------------- Enunciado ----------------------------------
rem Se pide modificar el script del ejercicio anterior de forma que, si el usuario no pasa uno de los parámetros, 
rem se lo solicitamos para que lo inserte por teclado.
rem Si una vez solicitado el número el usuario no lo ha insertado, 
rem entonces mostramos un mensaje de error y salimos.
rem -------------------------------------------------------------------------------

@echo off 
:: Le pedimos al usuario dos numeros por parametro
echo Has pasado por parametro dos numeros: %1 %2
:: Cogo y paso los dos parametros a unas variables
set num1=%1
set num2=%2
:: Ahora lo que vamos a comprobar es si los parametros estan vacios
:: y si lo estan dar la oportunidad al usuario de que los ponga el
if "%num1%" eque "" (set /p num1=Introduce el primer numero:) else (set num1=%1)
rem se puede hacer if en una sola linea
if "%num2% equ "" (
	set num2=Introduce el segundo numero:
) else (
	set num2=%2
)
:: Comprobamos si los parametros que nos ha pasado el usuario estan vacios
:: si lo estan que le digamos como funciona
if "%num1%" equ "" (
	goto Error
)
if "%num2%" equ "" (
	goto Error
)
:: Una vez recogido los parametros y pasados a unas variables
:: lo pasariamos para hacer todos los calculos
set /a suma=%num1% + %num2%
:: Ahora para la resta vamos a comprobar que el primer numero no sea
:: mayor que el segundo
if %num1% lss %num2% (
	set /a resta=%num2% - %num1%
) else (
	set /a resta=%num1% - %num2%
)
rem "Lo comento para no eliminarlo "(set /a resta=%num1% - %num2%)
set /a multi=%num1% * %num2%
:: Una vez echos los calculos se los diremos al usuario
echo.
echo La suma de %num1% y %num2% es: %suma%
echo La resta de %num1% y %num2% es: %resta%
echo La multiplicacion de %num1% y %num2% es: %multi%
goto final
:: Listado de las etiquetas para los errores y demas
:Error
echo Uso: %0 "primer numero" "segundo numero"
pause
:: Este lo ponemos para que si nos pasa un parametros bien no le
:: salte todo lo del error
:final
