#!/bin/bash
# Autor: Martina Damian
# Ejercicio : Verificar si el parámetro es archivo, directorio o ninguno
if [ -f "$1" ]; then
    echo "$1 es un archivo"
elif [ -d "$1" ]; then
    echo "$1 es un directorio"
else
    echo "$1 no es ni un archivo ni un directorio"
fi
