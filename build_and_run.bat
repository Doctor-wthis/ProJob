
@echo off
REM =====================================================
REM Script para compilar y ejecutar el proyecto Pascal
REM =====================================================

REM Configuración de rutas
SET SRC_DIR=src
SET LIB_DIR=lib
SET BUILD_DIR=build
SET TARGET=Main.exe

REM Crear carpeta build si no existe
IF NOT EXIST %BUILD_DIR% (
    mkdir %BUILD_DIR%
)

REM Compilar el proyecto
echo Compilando...
fpc -Fu%LIB_DIR% -FE%BUILD_DIR% %SRC_DIR%\Main.pas
IF ERRORLEVEL 1 (
    echo.
    echo Error de compilacion. Revisa el codigo.
    pause
    exit /b 1
)

REM Ejecutar el programa
echo.
echo Ejecutando %TARGET%...
%BUILD_DIR%\%TARGET%

pause
