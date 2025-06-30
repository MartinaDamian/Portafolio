#!/bin/bash
# Autor: Martina Damian
# Ejercicio 1: Bucle For con lista de palabras
# Descripción: Este script recorre una lista fija de palabras (uno, dos, tres, cuatro) e imprime cada una.
for var in uno dos tres cuatro
do
  echo $var
done
echo "---------------------------"
# Ejercicio 2: Bucle For con secuencia numérica
# Descripción: Este script imprime los números del 1 al 10 utilizando el comando seq.
for var in `seq 1 10`
do
  echo $var
done
echo "---------------------------"
# Ejercicio 3: Bucle For listando el contenido de /etc
# Descripción: Este script recorre y muestra por pantalla cada archivo o directorio dentro de /etc.
for var in `ls /etc/`
do
  echo $var
done
