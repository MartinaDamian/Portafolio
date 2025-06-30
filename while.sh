#!/bin/bash
# Autor: Martina Damian
# Ejercicio 4: Bucle While del 0 al 10
# Descripción: Este script imprime los números del 0 al 10 usando un bucle while.
i=0
while [ $i -le 10 ]; do
  echo $i
  let i=$i+1
done
echo "---------------------------"
# Ejercicio: Bucle While para contar usuarios por nombre
# Descripción: Este script pregunta al usuario un nombre. Mientras no se escriba "s", 
# busca cuántas veces ese nombre aparece en /etc/passwd y lo muestra.
c="n"
while [ "$c" != "s" ]; do
  read -p "usuario: " c
  cant=`egrep -c ^$c /etc/passwd`
  echo "hay $cant usuarios $c"
done
